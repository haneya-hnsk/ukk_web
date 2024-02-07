@extends('../layout/appPlain')

@section('main')

<div class="row d-flex justify-content-center">
    <div class="col-8">

        <div class="h1">
           {{ $book->judul }}
        </div>
    </div>
</div>

<div id="pdf-viewer"></div>

@endsection

@section('script')
<script>

    var pdfJsLib = window['pdfjs-dist/build/pdf']
    pdfJsLib.GlobalWorkerOptions.workerSrc = "{{ asset('PDFs/pdf.worker.min.js') }}"
    var currPage = 1; //Pages are 1-based not 0-based
var numPages = 0;
var thePDF = null;
var url = "{{ asset('storage/book/file/'. $book->file) }}"

pdfJsLib.getDocument(url).promise.then(function(pdf) {
        thePdf = pdf;
        viewer = document.getElementById('pdf-viewer');
        
        for(page = 1; page <= pdf.numPages; page++) {
          canvas = document.createElement("canvas");    
          canvas.className = 'pdf-page-canvas';         
          viewer.appendChild(canvas);            
          renderPage(page, canvas);
        }
    });
    
    function renderPage(pageNumber, canvas) {
        thePdf.getPage(pageNumber).then(function(page) {
          viewport = page.getViewport({ scale: 2 });
          canvas.height = viewport.height;
          canvas.width = viewport.width;          
          page.render({canvasContext: canvas.getContext('2d'), viewport: viewport});
    });
    }
</script>
@endsection
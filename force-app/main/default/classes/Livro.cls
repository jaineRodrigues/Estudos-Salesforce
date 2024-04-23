public class Livro {
    public integer idLivro;
    public string titulo;
    public string autor;
    public integer copiasDisponiveis;
    
    public Livro(integer idLivro, String titulo, string autor, integer copiasDisponiveis){
        this.idLivro = idLivro;
        this.titulo = titulo;
        this.autor = autor;
        this.copiasDisponiveis = copiasDisponiveis;
    }
    
    public void emprestar() {
        if (copiasDisponiveis > 0) {
            copiasDisponiveis--;
            System.debug('Livro emprestado: ' + titulo);
        } else {
            System.debug('Não há cópias disponíveis para empréstimo do livro: ' + titulo);
        }
    }
    
    public void devolver() {
        copiasDisponiveis++;
        System.debug('Livro devolvido: ' + titulo);
    }
    
    public void exibirInformacoes() {
        System.debug('Informações do livro - ID: ' + idLivro + ', Título: ' + titulo + ', Autor: ' + autor + ', Cópias Disponíveis: ' + copiasDisponiveis);
    }
}
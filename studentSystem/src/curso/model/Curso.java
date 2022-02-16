package curso.model;

import java.util.ArrayList;

import curso.dao.CourseDao;

public class Curso {
	private int idCourse;
	public String name;
	private String semester;
	
	public Curso() {

	}

	public Curso(String name, String semester) {
		super();
		this.name = name;
		this.semester = semester;
	}

	public Curso(int idCourse, String name, String semester) {
		this.idCourse = idCourse;
		this.name = name;
		this.semester = semester;
	}

	public int getIdCourse() {
		return idCourse;
	}

	public void setIdCourse(int idCourse) {
		this.idCourse = idCourse;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSemester() {
		return semester;
	}

	public void setSemester(String semester) {
		this.semester = semester;
	}

	public void salvar() {
		new CourseDao().cadastrarCourse(this);
	}
	
	public void excluir(int idCourse) {
		new CourseDao().ExcluirCurso(idCourse);
	}
	
	public Curso buscarCursoPorId(int idCourse) {
		return new CourseDao().BuscarCursoPorId(idCourse);
	}
	
	public ArrayList<Curso> BuscarCursosPorNome(String name) {
		return new CourseDao().BuscarCursosPorNome(name);
	}

	public void alterarCurso() {
		new CourseDao().alterarCurso(this);
	}
	
}

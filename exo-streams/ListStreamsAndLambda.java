import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.ThreadLocalRandom;
import java.util.stream.Collectors;

public class ListStreamsAndLambda{
	
	public static void main(String... args) {
		
	}
	
	static public List<Personne> getPersonnes(){
		List<Personne> personnes = new ArrayList<Personne>();
		personnes.add(new Personne("Roche", "Charlotte", LocalDate.of(ThreadLocalRandom.current().nextInt(1950,2021), ThreadLocalRandom.current().nextInt(1,13),ThreadLocalRandom.current().nextInt(1,29))));
		personnes.add(new Personne("Michel", "Nathan", LocalDate.of(ThreadLocalRandom.current().nextInt(1950,2021), ThreadLocalRandom.current().nextInt(1,13),ThreadLocalRandom.current().nextInt(1,29))));
		personnes.add(new Personne("Lacroix MD", "Quentin", LocalDate.of(ThreadLocalRandom.current().nextInt(1950,2021), ThreadLocalRandom.current().nextInt(1,13),ThreadLocalRandom.current().nextInt(1,29))));
		personnes.add(new Personne("Dufour", "Louis", LocalDate.of(ThreadLocalRandom.current().nextInt(1950,2021), ThreadLocalRandom.current().nextInt(1,13),ThreadLocalRandom.current().nextInt(1,29))));
		personnes.add(new Personne("Dumas", "Clémence", LocalDate.of(ThreadLocalRandom.current().nextInt(1950,2021), ThreadLocalRandom.current().nextInt(1,13),ThreadLocalRandom.current().nextInt(1,29))));
		personnes.add(new Personne("Clara", "Vincent", LocalDate.of(ThreadLocalRandom.current().nextInt(1950,2021), ThreadLocalRandom.current().nextInt(1,13),ThreadLocalRandom.current().nextInt(1,29))));
		personnes.add(new Personne("Carla", "Huet", LocalDate.of(ThreadLocalRandom.current().nextInt(1950,2021), ThreadLocalRandom.current().nextInt(1,13),ThreadLocalRandom.current().nextInt(1,29))));
		personnes.add(new Personne("Maëlle", "Blanchard", LocalDate.of(ThreadLocalRandom.current().nextInt(1950,2021), ThreadLocalRandom.current().nextInt(1,13),ThreadLocalRandom.current().nextInt(1,29))));
		personnes.add(new Personne("Justine", "Brun", LocalDate.of(ThreadLocalRandom.current().nextInt(1950,2021), ThreadLocalRandom.current().nextInt(1,13),ThreadLocalRandom.current().nextInt(1,29))));
		personnes.add(new Personne("Noémie", "Fournier", LocalDate.of(ThreadLocalRandom.current().nextInt(1950,2021), ThreadLocalRandom.current().nextInt(1,13),ThreadLocalRandom.current().nextInt(1,29))));
		personnes.add(new Personne("Jean", "Dupond", LocalDate.of(ThreadLocalRandom.current().nextInt(1950,2021), ThreadLocalRandom.current().nextInt(1,13),ThreadLocalRandom.current().nextInt(1,29))));
		personnes.add(new Personne("Pierre", "Dupont", LocalDate.of(ThreadLocalRandom.current().nextInt(1950,2021), ThreadLocalRandom.current().nextInt(1,13),ThreadLocalRandom.current().nextInt(1,29))));
		personnes.add(new Personne("Jacques", "Dupou", LocalDate.of(ThreadLocalRandom.current().nextInt(1950,2021), ThreadLocalRandom.current().nextInt(1,13),ThreadLocalRandom.current().nextInt(1,29))));
		personnes.add(new Personne("Thierry", "Dapont", LocalDate.of(ThreadLocalRandom.current().nextInt(1950,2021), ThreadLocalRandom.current().nextInt(1,13),ThreadLocalRandom.current().nextInt(1,29))));
		personnes.add(new Personne("Jean", "Bille", LocalDate.of(ThreadLocalRandom.current().nextInt(1950,2021), ThreadLocalRandom.current().nextInt(1,13),ThreadLocalRandom.current().nextInt(1,29))));
		personnes.add(new Personne("Thomas", "Artoh", LocalDate.of(ThreadLocalRandom.current().nextInt(1950,2021), ThreadLocalRandom.current().nextInt(1,13),ThreadLocalRandom.current().nextInt(1,29))));
		personnes.add(new Personne("Romain", "Dupont", LocalDate.of(ThreadLocalRandom.current().nextInt(1950,2021), ThreadLocalRandom.current().nextInt(1,13),ThreadLocalRandom.current().nextInt(1,29))));
		personnes.add(new Personne("Dufour", "Charlotte", LocalDate.of(ThreadLocalRandom.current().nextInt(1950,2021), ThreadLocalRandom.current().nextInt(1,13),ThreadLocalRandom.current().nextInt(1,29))));
		personnes.add(new Personne("Roche", "Huet", LocalDate.of(ThreadLocalRandom.current().nextInt(1950,2021), ThreadLocalRandom.current().nextInt(1,13),ThreadLocalRandom.current().nextInt(1,29))));
		return personnes;
	}

}


class Personne{
	private String lastname;
	private String firstname;
	private LocalDate birthday;
	public Personne(String lastname, String firstname, LocalDate birthday) {
		super();
		this.lastname = lastname;
		this.firstname = firstname;
		this.birthday = birthday;
	}
	@Override
	public String toString() {
		return "Personne [lastname=" + lastname + ", firstname=" + firstname + ", birthday=" + birthday + "]";
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public LocalDate getBirthday() {
		return birthday;
	}
	public void setBirthday(LocalDate birthday) {
		this.birthday = birthday;
	}	
	

}
package linkbin

class Story {
	String link
	String description
	String submittedOn

    static constraints = {
		link url : true , blank : false , unique : true
		description size : 10..1000 , blank : false
    }
}

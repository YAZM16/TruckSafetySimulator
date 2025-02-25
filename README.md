# 🚛 Lastbilssäkerhetssimulator

## 📌 Projektbeskrivning
Detta projekt syftar till att utveckla en simulator för att analysera och visualisera data från säkerhetssystem i lastbilar. Genom att samla in realtidsdata från olika sensorer och loggfiler kan systemet identifiera potentiella säkerhetsrisker och förbättra effektiviteten i fordonsflottor.

---
## 📖 Bakgrund & Syfte
Med den ökande automatiseringen och digitaliseringen inom transportindustrin blir säkerhetsaspekter allt viktigare. Lastbilar utrustas med avancerade säkerhetssystem som adaptiv farthållare, kollisionsvarningssystem och filhållningsassistans. För att säkerställa att dessa system fungerar optimalt krävs en plattform för datainsamling och analys.

### Syfte
- Förbättra fordonssäkerheten genom realtidsanalys
- Identifiera systemfel och potentiella risker
- Möjliggöra optimering av säkerhetssystem genom insikter från insamlad data

---
## 🎯 Vision & Mål
### Vision
Att utveckla en innovativ och användarvänlig simulator som möjliggör omfattande analys av säkerhetssystem i lastbilar.

### Mål
- Skapa en **plattform för realtidsdatainsamling**
- Designa ett **intuitivt användargränssnitt** för analys och visualisering
- Implementera **säker datahantering** och lagring
- Möjliggöra **export av data** i CSV- och JSON-format
- Skapa ett **notifikationssystem** för kritiska säkerhetslarm

---
## 👥 Intressentkartläggning
| Intressent | Roll |
|------------|------|
| **Fordonstillverkare** | Användare av systemet för att förbättra säkerhetslösningar |
| **Transportföretag** | Optimering av säkerhet och effektivitet i fordonsflottor |
| **Försäkringsbolag** | Riskanalys och skadeförebyggande åtgärder |
| **Trafikmyndigheter** | Regelverk och säkerhetsstandarder |
| **Fordonsingenjörer & tekniker** | Övervakning och felsökning av säkerhetssystem |

---
## 📜 Kravspecifikation
### ✅ Funktionella krav
- Systemet ska kunna **samla in realtidsdata från sensorer**.
- Användare ska kunna **generera och analysera rapporter**.
- **Administratörer** ska kunna hantera användarroller och åtkomst.
- Möjlighet att **exportera data** i CSV- och JSON-format.
- Implementera ett **notifikationssystem** för säkerhetskritiska händelser.
- **Filtreringsfunktionalitet** baserat på lastbilsmodell och säkerhetssystem.
- Integration med **externa API:er** för datainsamling.

### 🔒 Icke-funktionella krav
- Skalbart system som kan hantera **upp till 10 000 samtidiga datapunkter**.
- **Datasäkerhet och kryptering** vid lagring och överföring.
- **Responsivt användargränssnitt** anpassat för olika enheter.
- **Driftsäkerhet på minst 99,9% uptime**.
- **Automatiserade säkerhetskopieringar** dagligen.

### 🎯 Prioritering enligt MoSCoW-metoden
| Prioritet | Funktion |
|-----------|-----------|
| **Must** | Realtidsdatainsamling, användarhantering, rapportgenerering |
| **Should** | Notifikationer, dataexport |
| **Could** | Extern API-integration |
| **Won't** | AI-baserad analys i första versionen |

---
## 🚀 Kom igång
För att köra projektet lokalt, följ dessa steg:
```sh
# Klona projektet
$ git clone https://github.com/ditt-repo/lastbil-sakerhetssimulator.git

# Navigera till projektmappen
$ cd lastbil-sakerhetssimulator

# Bygg och kör projektet
$ dotnet build
$ dotnet run
```

---
## 🛠️ Teknologier
Projektet är byggt med följande teknologier:
- **Backend:** C# .NET 7 / ASP.NET Core
- **Databas:** SQL Server
- **Frontend:** Blazor
- **Autentisering:** OAuth / JWT
- **Hosting:** Azure / AWS

---
## 💻 Exempel på kod
Nedan visas ett kodexempel som illustrerar hur sensorinformation samlas in och lagras i databasen:

```csharp
public class SensorData
{
    public int Id { get; set; }
    public string SensorType { get; set; }
    public double Value { get; set; }
    public DateTime Timestamp { get; set; }
}

public class DataCollector
{
    private readonly DatabaseContext _context;

    public DataCollector(DatabaseContext context)
    {
        _context = context;
    }

    public async Task SaveSensorData(string type, double value)
    {
        var data = new SensorData
        {
            SensorType = type,
            Value = value,
            Timestamp = DateTime.UtcNow
        };

        _context.SensorData.Add(data);
        await _context.SaveChangesAsync();
    }
}
```

---
## 📌 Roadmap
Du kan se projektets fullständiga roadmap och backlog här:

https://github.com/users/YAZM16/projects/3

✅ Kravspecifikation och design  
🔲 Implementera datainsamling  
🔲 Skapa dashboard och UI  
🔲 Testning och prestandaoptimering  
🔲 Release och dokumentation  

---
## 📝 Licens
Detta projekt är skpat utan Licens.
---
## 📩 Kontakt
Har du frågor eller vill bidra? Kontakta oss via [GitHub Issues](https://github.com/ditt-repo/issues)!


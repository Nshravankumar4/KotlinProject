KotlinProject/
├─ .github/workflows/
│   ├─ Kotlin_build.yml
│   └─ JUnitTest.yml
├─ build.gradle.kts
├─ settings.gradle.kts
├─ src/main/kotlin/
│   ├─ Main.kt
│   └─ VariableType.kt
├─ src/test/kotlin/
│   └─ VariableTypeTest.kt
├─ .gitignore

for Linux set up repo chmod +x Scripts/SetUpRepo.sh
✅ Fix:

You need to make the script executable first:

chmod +x Scripts/SetUpRepo.sh

Then run:

Scripts/SetUpRepo.sh main

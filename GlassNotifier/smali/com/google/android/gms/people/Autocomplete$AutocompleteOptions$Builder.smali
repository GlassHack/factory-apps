.class public final Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private aCA:I

.field private aCB:Z

.field private aCv:Z

.field private aCw:Ljava/lang/String;

.field private aCx:Ljava/lang/String;

.field private aCy:I

.field private aCz:I

.field private mAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.google"

    iput-object v0, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->aCx:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->aCy:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->aCA:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->aCB:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->aCv:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->aCx:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->aCw:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->aCy:I

    return v0
.end method

.method static synthetic f(Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->aCz:I

    return v0
.end method

.method static synthetic g(Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->aCA:I

    return v0
.end method

.method static synthetic h(Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->aCB:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;
    .locals 2

    new-instance v0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;-><init>(Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;Lcom/google/android/gms/people/Autocomplete$1;)V

    return-object v0
.end method

.method public setAccount(Ljava/lang/String;)Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;
    .locals 0
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->mAccount:Ljava/lang/String;

    return-object p0
.end method

.method public setAutocompleteType(I)Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;
    .locals 0
    .param p1, "autocompleteType"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->aCy:I

    return-object p0
.end method

.method public setDirectoryAccountType(Ljava/lang/String;)Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;
    .locals 0
    .param p1, "directoryAccountType"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->aCx:Ljava/lang/String;

    return-object p0
.end method

.method public setIsDirectorySearch(Z)Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;
    .locals 0
    .param p1, "isDirectorySearch"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->aCv:Z

    return-object p0
.end method

.method public setNumberOfResults(I)Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;
    .locals 0
    .param p1, "numberOfResults"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->aCA:I

    return-object p0
.end method

.method public setPageId(Ljava/lang/String;)Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;
    .locals 0
    .param p1, "pageId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->aCw:Ljava/lang/String;

    return-object p0
.end method

.method public setSearchOptions(I)Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;
    .locals 0
    .param p1, "searchOptions"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->aCz:I

    return-object p0
.end method

.method public setUseAndroidContactFallback(Z)Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;
    .locals 0
    .param p1, "useAndroidContactFallback"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->aCB:Z

    return-object p0
.end method

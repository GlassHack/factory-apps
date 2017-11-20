.class public final Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/people/Autocomplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AutocompleteOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_NUMBER_OF_RESULTS:I = 0xa


# instance fields
.field public final account:Ljava/lang/String;

.field public final autocompleteType:I

.field public final directoryAccountType:Ljava/lang/String;

.field public final isDirectorySearch:Z

.field public final numberOfResults:I

.field public final pageId:Ljava/lang/String;

.field public final searchOptions:I

.field public final useAndroidContactFallback:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;)V
    .locals 1
    .param p1, "b"    # Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->a(Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;->isDirectorySearch:Z

    invoke-static {p1}, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->b(Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;->directoryAccountType:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->c(Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;->account:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->d(Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;->pageId:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->e(Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;->autocompleteType:I

    invoke-static {p1}, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->f(Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;->searchOptions:I

    invoke-static {p1}, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->g(Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;->numberOfResults:I

    invoke-static {p1}, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->h(Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;->useAndroidContactFallback:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;Lcom/google/android/gms/people/Autocomplete$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;
    .param p2, "x1"    # Lcom/google/android/gms/people/Autocomplete$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;-><init>(Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;)V

    return-void
.end method

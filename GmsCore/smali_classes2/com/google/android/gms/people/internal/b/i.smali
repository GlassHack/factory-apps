.class abstract Lcom/google/android/gms/people/internal/b/i;
.super Lcom/google/android/gms/people/m;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/gms/people/m;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/gms/people/internal/b/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/aa;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/google/android/gms/people/internal/b/j;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/people/internal/b/j;-><init>(Lcom/google/android/gms/people/internal/b/i;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.class final Lcom/google/android/gms/fitness/b/b/z;
.super Lcom/google/android/gms/fitness/b/b/x;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/google/android/gms/fitness/b/b/x;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/b/b/x;)V
    .locals 2

    .prologue
    .line 590
    iput-object p1, p0, Lcom/google/android/gms/fitness/b/b/z;->b:Lcom/google/android/gms/fitness/b/b/x;

    .line 591
    new-instance v0, Lcom/google/android/gms/fitness/b/b/aa;

    iget-object v1, p1, Lcom/google/android/gms/fitness/b/b/x;->a:Ljava/util/NavigableMap;

    invoke-direct {v0, v1}, Lcom/google/android/gms/fitness/b/b/aa;-><init>(Ljava/util/NavigableMap;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/fitness/b/b/x;-><init>(Ljava/util/NavigableMap;B)V

    .line 592
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/b/b/u;)V
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/z;->b:Lcom/google/android/gms/fitness/b/b/x;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/b/b/x;->b(Lcom/google/android/gms/fitness/b/b/u;)V

    .line 597
    return-void
.end method

.method public final b()Lcom/google/android/gms/fitness/b/b/w;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/z;->b:Lcom/google/android/gms/fitness/b/b/x;

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/fitness/b/b/u;)V
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/b/z;->b:Lcom/google/android/gms/fitness/b/b/x;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/b/b/x;->a(Lcom/google/android/gms/fitness/b/b/u;)V

    .line 602
    return-void
.end method

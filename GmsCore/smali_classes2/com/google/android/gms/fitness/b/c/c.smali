.class final Lcom/google/android/gms/fitness/b/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/b/c/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/b/c/b;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/android/gms/fitness/b/c/c;->a:Lcom/google/android/gms/fitness/b/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 136
    check-cast p1, Lcom/google/android/gms/fitness/b/o;

    check-cast p2, Lcom/google/android/gms/fitness/b/o;

    iget-object v0, p0, Lcom/google/android/gms/fitness/b/c/c;->a:Lcom/google/android/gms/fitness/b/c/b;

    iget-object v0, v0, Lcom/google/android/gms/fitness/b/c/b;->a:Lcom/google/android/gms/fitness/b/c/ag;

    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/o;->c()Lcom/google/android/gms/fitness/b/e;

    move-result-object v1

    invoke-interface {p2}, Lcom/google/android/gms/fitness/b/o;->c()Lcom/google/android/gms/fitness/b/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/fitness/b/c/ag;->a(Lcom/google/android/gms/fitness/b/e;Lcom/google/android/gms/fitness/b/e;)I

    move-result v0

    return v0
.end method

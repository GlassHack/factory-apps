.class final Lcom/google/android/gms/fitness/b/c/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/b/l;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/fitness/b/c/ab;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/b/c/ab;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/android/gms/fitness/b/c/ac;->b:Lcom/google/android/gms/fitness/b/c/ab;

    iput-object p2, p0, Lcom/google/android/gms/fitness/b/c/ac;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/b/e;)Z
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/c/ac;->a:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.class final Lcom/google/android/gms/fitness/e/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/e/b;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Lcom/google/protobuf/nano/j;
    .locals 2

    .prologue
    .line 116
    check-cast p1, Lcom/google/android/gms/fitness/data/Application;

    new-instance v0, Lcom/google/n/a/a/a/a/b;

    invoke-direct {v0}, Lcom/google/n/a/a/a/a/b;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Application;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/n/a/a/a/a/b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Application;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/n/a/a/a/a/b;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Application;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/n/a/a/a/a/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/j;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 116
    check-cast p1, Lcom/google/n/a/a/a/a/b;

    new-instance v0, Lcom/google/android/gms/fitness/data/Application;

    iget-object v1, p1, Lcom/google/n/a/a/a/a/b;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/n/a/a/a/a/b;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/n/a/a/a/a/b;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/Application;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.class final Lcom/google/android/gms/d/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/h;


# instance fields
.field final synthetic a:Lcom/google/android/gms/d/c;

.field final synthetic b:Lcom/google/android/gms/d/a/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/d/a/b;Lcom/google/android/gms/d/c;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/android/gms/d/a/g;->b:Lcom/google/android/gms/d/a/b;

    iput-object p2, p0, Lcom/google/android/gms/d/a/g;->a:Lcom/google/android/gms/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/b;)V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/gms/d/a/g;->a:Lcom/google/android/gms/d/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connection failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/d/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/d/c;->a(Ljava/lang/String;)V

    .line 148
    return-void
.end method

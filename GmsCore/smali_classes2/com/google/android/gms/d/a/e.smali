.class final Lcom/google/android/gms/d/a/e;
.super Lcom/google/android/gms/common/internal/g;
.source "SourceFile"


# instance fields
.field final synthetic b:[B

.field final synthetic c:Lcom/google/android/gms/d/a/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/d/a/d;Lcom/google/android/gms/d/c;[B)V
    .locals 1

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/android/gms/d/a/e;->c:Lcom/google/android/gms/d/a/d;

    iput-object p3, p0, Lcom/google/android/gms/d/a/e;->b:[B

    iget-object v0, p1, Lcom/google/android/gms/d/a/d;->b:Lcom/google/android/gms/d/a/b;

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/internal/g;-><init>(Lcom/google/android/gms/common/internal/e;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 114
    check-cast p1, Lcom/google/android/gms/d/c;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/d/a/e;->b:[B

    invoke-static {v0}, Lcom/google/android/gms/d/a/b;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/d/c;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/d/a/e;->c:Lcom/google/android/gms/d/a/d;

    iget-object v0, v0, Lcom/google/android/gms/d/a/d;->b:Lcom/google/android/gms/d/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/d/a/b;->d()V

    return-void
.end method

.method protected final c()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/gms/d/a/e;->c:Lcom/google/android/gms/d/a/d;

    iget-object v0, v0, Lcom/google/android/gms/d/a/d;->b:Lcom/google/android/gms/d/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/d/a/b;->d()V

    .line 125
    return-void
.end method

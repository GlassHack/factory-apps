.class final Lcom/google/android/gms/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/e/n;


# instance fields
.field final synthetic a:Lcom/google/android/gms/e/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/e/a;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/gms/e/b;->a:Lcom/google/android/gms/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/e/l;)V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/gms/e/b;->a:Lcom/google/android/gms/e/a;

    iput-object p1, v0, Lcom/google/android/gms/e/a;->a:Lcom/google/android/gms/e/l;

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/e/b;->a:Lcom/google/android/gms/e/a;

    iget-object v0, v0, Lcom/google/android/gms/e/a;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/e/h;

    .line 98
    iget-object v2, p0, Lcom/google/android/gms/e/b;->a:Lcom/google/android/gms/e/a;

    iget-object v2, v2, Lcom/google/android/gms/e/a;->a:Lcom/google/android/gms/e/l;

    invoke-interface {v0}, Lcom/google/android/gms/e/h;->b()V

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/e/b;->a:Lcom/google/android/gms/e/a;

    iget-object v0, v0, Lcom/google/android/gms/e/a;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 103
    iget-object v0, p0, Lcom/google/android/gms/e/b;->a:Lcom/google/android/gms/e/a;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/e/a;->b:Landroid/os/Bundle;

    .line 104
    return-void
.end method

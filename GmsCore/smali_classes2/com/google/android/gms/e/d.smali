.class final Lcom/google/android/gms/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/e/h;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/google/android/gms/e/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/e/a;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/google/android/gms/e/d;->b:Lcom/google/android/gms/e/a;

    iput-object p2, p0, Lcom/google/android/gms/e/d;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/gms/e/d;->b:Lcom/google/android/gms/e/a;

    iget-object v0, v0, Lcom/google/android/gms/e/a;->a:Lcom/google/android/gms/e/l;

    iget-object v1, p0, Lcom/google/android/gms/e/d;->a:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcom/google/android/gms/e/l;->a(Landroid/os/Bundle;)V

    .line 209
    return-void
.end method

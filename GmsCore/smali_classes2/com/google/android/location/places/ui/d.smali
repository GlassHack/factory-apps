.class final Lcom/google/android/location/places/ui/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/location/places/h;

.field final synthetic b:Lcom/google/android/location/places/ui/a;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/ui/a;Lcom/google/android/gms/location/places/h;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/google/android/location/places/ui/d;->b:Lcom/google/android/location/places/ui/a;

    iput-object p2, p0, Lcom/google/android/location/places/ui/d;->a:Lcom/google/android/gms/location/places/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/android/location/places/ui/d;->b:Lcom/google/android/location/places/ui/a;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/a;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/google/android/location/places/ui/d;->b:Lcom/google/android/location/places/ui/a;

    invoke-static {v0}, Lcom/google/android/location/places/ui/a;->d(Lcom/google/android/location/places/ui/a;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/google/android/location/places/ui/d;->b:Lcom/google/android/location/places/ui/a;

    invoke-static {v0}, Lcom/google/android/location/places/ui/a;->d(Lcom/google/android/location/places/ui/a;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/ui/d;->b:Lcom/google/android/location/places/ui/a;

    invoke-static {v0}, Lcom/google/android/location/places/ui/a;->e(Lcom/google/android/location/places/ui/a;)Z

    .line 297
    iget-object v0, p0, Lcom/google/android/location/places/ui/d;->b:Lcom/google/android/location/places/ui/a;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/a;->l()Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->c()V

    .line 298
    iget-object v0, p0, Lcom/google/android/location/places/ui/d;->b:Lcom/google/android/location/places/ui/a;

    invoke-static {v0}, Lcom/google/android/location/places/ui/a;->f(Lcom/google/android/location/places/ui/a;)Lcom/google/android/location/places/ui/j;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/ui/d;->a:Lcom/google/android/gms/location/places/h;

    invoke-interface {v0, v1}, Lcom/google/android/location/places/ui/j;->a(Lcom/google/android/gms/location/places/h;)V

    .line 300
    :cond_1
    return-void
.end method

.class final Lcom/google/android/location/places/ui/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/location/places/UserAddedPlace;

.field final synthetic b:Lcom/google/android/location/places/ui/a;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/ui/a;Lcom/google/android/gms/location/places/UserAddedPlace;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/google/android/location/places/ui/e;->b:Lcom/google/android/location/places/ui/a;

    iput-object p2, p0, Lcom/google/android/location/places/ui/e;->a:Lcom/google/android/gms/location/places/UserAddedPlace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/android/location/places/ui/e;->b:Lcom/google/android/location/places/ui/a;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/a;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 311
    iget-object v0, p0, Lcom/google/android/location/places/ui/e;->b:Lcom/google/android/location/places/ui/a;

    invoke-static {v0}, Lcom/google/android/location/places/ui/a;->d(Lcom/google/android/location/places/ui/a;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/google/android/location/places/ui/e;->b:Lcom/google/android/location/places/ui/a;

    invoke-static {v0}, Lcom/google/android/location/places/ui/a;->d(Lcom/google/android/location/places/ui/a;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/ui/e;->b:Lcom/google/android/location/places/ui/a;

    invoke-static {v0}, Lcom/google/android/location/places/ui/a;->g(Lcom/google/android/location/places/ui/a;)Landroid/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/google/android/location/places/ui/e;->b:Lcom/google/android/location/places/ui/a;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/google/android/location/places/ui/e;->b:Lcom/google/android/location/places/ui/a;

    invoke-virtual {v2}, Lcom/google/android/location/places/ui/a;->j()Landroid/support/v4/app/j;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/google/android/location/places/ui/e;->b:Lcom/google/android/location/places/ui/a;

    const v3, 0x7f1002d4

    invoke-virtual {v2, v3}, Lcom/google/android/location/places/ui/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1003f5

    new-instance v3, Lcom/google/android/location/places/ui/h;

    invoke-direct {v3, p0}, Lcom/google/android/location/places/ui/h;-><init>(Lcom/google/android/location/places/ui/e;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1002d3

    new-instance v3, Lcom/google/android/location/places/ui/g;

    invoke-direct {v3, p0}, Lcom/google/android/location/places/ui/g;-><init>(Lcom/google/android/location/places/ui/e;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/android/location/places/ui/f;

    invoke-direct {v2, p0}, Lcom/google/android/location/places/ui/f;-><init>(Lcom/google/android/location/places/ui/e;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/places/ui/a;->a(Lcom/google/android/location/places/ui/a;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/ui/e;->b:Lcom/google/android/location/places/ui/a;

    invoke-static {v0}, Lcom/google/android/location/places/ui/a;->g(Lcom/google/android/location/places/ui/a;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 352
    :cond_2
    return-void
.end method

.class final Lcom/google/android/location/places/ui/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/android/location/places/ui/e;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/ui/e;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/google/android/location/places/ui/f;->a:Lcom/google/android/location/places/ui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/android/location/places/ui/f;->a:Lcom/google/android/location/places/ui/e;

    iget-object v0, v0, Lcom/google/android/location/places/ui/e;->b:Lcom/google/android/location/places/ui/a;

    invoke-static {v0}, Lcom/google/android/location/places/ui/a;->h(Lcom/google/android/location/places/ui/a;)Lcom/google/android/location/places/ui/aw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/google/android/location/places/ui/f;->a:Lcom/google/android/location/places/ui/e;

    iget-object v0, v0, Lcom/google/android/location/places/ui/e;->b:Lcom/google/android/location/places/ui/a;

    invoke-static {v0}, Lcom/google/android/location/places/ui/a;->h(Lcom/google/android/location/places/ui/a;)Lcom/google/android/location/places/ui/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/aw;->a()V

    .line 344
    :cond_0
    return-void
.end method

.class final Lcom/google/android/location/places/ui/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/location/places/ui/e;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/ui/e;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/google/android/location/places/ui/h;->a:Lcom/google/android/location/places/ui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/android/location/places/ui/h;->a:Lcom/google/android/location/places/ui/e;

    iget-object v0, v0, Lcom/google/android/location/places/ui/e;->b:Lcom/google/android/location/places/ui/a;

    invoke-static {v0}, Lcom/google/android/location/places/ui/a;->h(Lcom/google/android/location/places/ui/a;)Lcom/google/android/location/places/ui/aw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/ui/h;->a:Lcom/google/android/location/places/ui/e;

    iget-object v1, v1, Lcom/google/android/location/places/ui/e;->a:Lcom/google/android/gms/location/places/UserAddedPlace;

    invoke-virtual {v0, v1}, Lcom/google/android/location/places/ui/aw;->a(Lcom/google/android/gms/location/places/UserAddedPlace;)V

    .line 323
    iget-object v0, p0, Lcom/google/android/location/places/ui/h;->a:Lcom/google/android/location/places/ui/e;

    iget-object v0, v0, Lcom/google/android/location/places/ui/e;->b:Lcom/google/android/location/places/ui/a;

    invoke-static {v0}, Lcom/google/android/location/places/ui/a;->i(Lcom/google/android/location/places/ui/a;)V

    .line 324
    return-void
.end method

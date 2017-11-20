.class final Lcom/google/android/location/places/ui/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/location/places/ui/s;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/ui/s;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/location/places/ui/u;->a:Lcom/google/android/location/places/ui/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/location/places/ui/u;->a:Lcom/google/android/location/places/ui/s;

    invoke-static {v0}, Lcom/google/android/location/places/ui/s;->a(Lcom/google/android/location/places/ui/s;)Lcom/google/android/location/places/ui/v;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/ui/u;->a:Lcom/google/android/location/places/ui/s;

    invoke-static {v1}, Lcom/google/android/location/places/ui/s;->b(Lcom/google/android/location/places/ui/s;)Lcom/google/android/gms/location/places/h;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/location/places/ui/v;->d(Lcom/google/android/gms/location/places/h;)V

    .line 90
    return-void
.end method

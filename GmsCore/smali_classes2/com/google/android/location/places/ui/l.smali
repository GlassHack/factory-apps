.class final Lcom/google/android/location/places/ui/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/location/places/ui/k;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/ui/k;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/google/android/location/places/ui/l;->a:Lcom/google/android/location/places/ui/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/location/places/ui/l;->a:Lcom/google/android/location/places/ui/k;

    invoke-static {v0}, Lcom/google/android/location/places/ui/k;->a(Lcom/google/android/location/places/ui/k;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/ui/l;->a:Lcom/google/android/location/places/ui/k;

    invoke-static {v0}, Lcom/google/android/location/places/ui/k;->c(Lcom/google/android/location/places/ui/k;)Lcom/google/android/location/places/ui/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/ui/l;->a:Lcom/google/android/location/places/ui/k;

    invoke-static {v1}, Lcom/google/android/location/places/ui/k;->b(Lcom/google/android/location/places/ui/k;)Lcom/google/android/gms/location/places/h;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/location/places/ui/n;->a(Lcom/google/android/gms/location/places/h;II)V

    goto :goto_0
.end method

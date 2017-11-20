.class final Lcom/google/android/location/places/ui/m;
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
    .line 199
    iput-object p1, p0, Lcom/google/android/location/places/ui/m;->a:Lcom/google/android/location/places/ui/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/location/places/ui/m;->a:Lcom/google/android/location/places/ui/k;

    invoke-static {v0}, Lcom/google/android/location/places/ui/k;->c(Lcom/google/android/location/places/ui/k;)Lcom/google/android/location/places/ui/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/places/ui/n;->a()V

    .line 203
    return-void
.end method

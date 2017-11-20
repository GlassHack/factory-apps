.class final Lcom/google/android/location/places/ui/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/google/android/location/places/ui/PlacePickerActivity;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/ui/PlacePickerActivity;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/google/android/location/places/ui/au;->a:Lcom/google/android/location/places/ui/PlacePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/location/places/ui/au;->a:Lcom/google/android/location/places/ui/PlacePickerActivity;

    invoke-static {v0}, Lcom/google/android/location/places/ui/PlacePickerActivity;->a(Lcom/google/android/location/places/ui/PlacePickerActivity;)V

    .line 172
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

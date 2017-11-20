.class final Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;
.super Ljava/lang/Object;
.source "ScrollAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/ScrollAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AdapterViewState"
.end annotation


# instance fields
.field expandableChildStates:Landroid/os/Bundle;

.field expandedChildStates:Landroid/os/Bundle;

.field index:I

.field itemsOnOffAxis:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 3136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3139
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;->expandedChildStates:Landroid/os/Bundle;

    .line 3140
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;->expandableChildStates:Landroid/os/Bundle;

    return-void
.end method

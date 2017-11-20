.class public Lcom/google/android/apps/lightcycle/util/Size;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/google/android/apps/lightcycle/util/Size;->width:I

    .line 16
    iput p2, p0, Lcom/google/android/apps/lightcycle/util/Size;->height:I

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/lightcycle/util/Size;)V
    .locals 0
    .param p1, "other"    # Lcom/google/android/apps/lightcycle/util/Size;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/util/Size;->set(Lcom/google/android/apps/lightcycle/util/Size;)V

    .line 21
    return-void
.end method


# virtual methods
.method public set(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/google/android/apps/lightcycle/util/Size;->width:I

    .line 25
    iput p2, p0, Lcom/google/android/apps/lightcycle/util/Size;->height:I

    .line 26
    return-void
.end method

.method public set(Lcom/google/android/apps/lightcycle/util/Size;)V
    .locals 1
    .param p1, "other"    # Lcom/google/android/apps/lightcycle/util/Size;

    .prologue
    .line 29
    iget v0, p1, Lcom/google/android/apps/lightcycle/util/Size;->width:I

    iput v0, p0, Lcom/google/android/apps/lightcycle/util/Size;->width:I

    .line 30
    iget v0, p1, Lcom/google/android/apps/lightcycle/util/Size;->height:I

    iput v0, p0, Lcom/google/android/apps/lightcycle/util/Size;->height:I

    .line 31
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/lightcycle/util/Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/lightcycle/util/Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

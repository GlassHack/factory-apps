.class public final Lcom/google/android/apps/lightcycle/R$array;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "array"
.end annotation


# static fields
.field public static gallery_item_actions_stitched:I

.field public static gallery_item_actions_unstitched:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/high16 v0, 0x7f080000

    sput v0, Lcom/google/android/apps/lightcycle/R$array;->gallery_item_actions_stitched:I

    .line 13
    const v0, 0x7f080001

    sput v0, Lcom/google/android/apps/lightcycle/R$array;->gallery_item_actions_unstitched:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

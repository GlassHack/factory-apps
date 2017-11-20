.class public final Lcom/google/glass/sound/R$attr;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/sound/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field public static auto_repeat:I

.field public static thumbnail_image:I

.field public static tip:I

.field public static video_file_name:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const v0, 0x7f010003

    sput v0, Lcom/google/glass/sound/R$attr;->auto_repeat:I

    .line 62
    const v0, 0x7f010002

    sput v0, Lcom/google/glass/sound/R$attr;->thumbnail_image:I

    .line 67
    const/high16 v0, 0x7f010000

    sput v0, Lcom/google/glass/sound/R$attr;->tip:I

    .line 75
    const v0, 0x7f010001

    sput v0, Lcom/google/glass/sound/R$attr;->video_file_name:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

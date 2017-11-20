.class public final Lcom/google/glass/common/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/common/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AutoStartVideoView:[I

.field public static final AutoStartVideoView_auto_repeat:I = 0x2

.field public static final AutoStartVideoView_thumbnail_image:I = 0x1

.field public static final AutoStartVideoView_video_file_name:I

.field public static final TipsView:[I

.field public static final TipsView_tip:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/glass/common/R$styleable;->AutoStartVideoView:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010019

    aput v2, v0, v1

    sput-object v0, Lcom/google/glass/common/R$styleable;->TipsView:[I

    return-void

    :array_0
    .array-data 4
        0x7f010003
        0x7f010004
        0x7f010005
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

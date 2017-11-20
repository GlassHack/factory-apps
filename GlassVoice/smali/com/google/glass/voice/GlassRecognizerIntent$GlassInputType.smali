.class public Lcom/google/glass/voice/GlassRecognizerIntent$GlassInputType;
.super Ljava/lang/Object;
.source "GlassRecognizerIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/GlassRecognizerIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GlassInputType"
.end annotation


# static fields
.field public static final TYPE_ALL:I = 0x0

.field public static final TYPE_CONTACT:I = 0x4

.field public static final TYPE_DATE:I = 0x2

.field public static final TYPE_LOCATION:I = 0x5

.field public static final TYPE_NUMERIC:I = 0x1

.field public static final TYPE_PHONE_NUMBER:I = 0x6

.field public static final TYPE_TIME:I = 0x3

.field public static final TYPE_ZIP_CODE:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

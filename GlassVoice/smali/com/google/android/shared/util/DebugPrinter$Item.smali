.class final Lcom/google/android/shared/util/DebugPrinter$Item;
.super Ljava/lang/Object;
.source "DebugPrinter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/shared/util/DebugPrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Item"
.end annotation


# instance fields
.field mDurationNs:J

.field mMessage:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method set(JLjava/lang/String;)V
    .locals 0
    .param p1, "durationNs"    # J
    .param p3, "message"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/google/android/shared/util/DebugPrinter$Item;->mDurationNs:J

    .line 75
    iput-object p3, p0, Lcom/google/android/shared/util/DebugPrinter$Item;->mMessage:Ljava/lang/String;

    .line 76
    return-void
.end method

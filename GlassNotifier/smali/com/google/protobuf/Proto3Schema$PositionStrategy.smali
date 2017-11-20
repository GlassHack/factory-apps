.class abstract Lcom/google/protobuf/Proto3Schema$PositionStrategy;
.super Ljava/lang/Object;
.source "Proto3Schema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Proto3Schema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PositionStrategy"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2031
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/Proto3Schema$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/Proto3Schema$1;

    .prologue
    .line 2031
    invoke-direct {p0}, Lcom/google/protobuf/Proto3Schema$PositionStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method abstract positionForFieldNumber(I)J
.end method

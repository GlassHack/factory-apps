.class public interface abstract Lgo_annotation/nano/GoAnnotation;
.super Ljava/lang/Object;
.source "GoAnnotation.java"


# static fields
.field public static final trackFieldUse:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final usedAsWeakField:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lcom/google/protobuf/nano/DescriptorProtos$MessageOptions;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    .line 14
    const-class v0, Ljava/lang/Boolean;

    const-wide/32 v2, 0xf2f66a0

    .line 15
    invoke-static {v1, v0, v2, v3}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lgo_annotation/nano/GoAnnotation;->usedAsWeakField:Lcom/google/protobuf/nano/Extension;

    .line 25
    const-class v0, Ljava/lang/Boolean;

    const-wide/32 v2, 0x11d37028

    .line 26
    invoke-static {v1, v0, v2, v3}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lgo_annotation/nano/GoAnnotation;->trackFieldUse:Lcom/google/protobuf/nano/Extension;

    .line 25
    return-void
.end method

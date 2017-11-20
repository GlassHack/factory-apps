.class public interface abstract Lproto2/nano/nano/NanoDescriptor;
.super Ljava/lang/Object;
.source "NanoDescriptor.java"


# static fields
.field public static final enumAsLite:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lcom/google/protobuf/nano/DescriptorProtos$EnumOptions;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final legacyOneof:Lcom/google/protobuf/nano/Extension;
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

.field public static final messageAsLite:Lcom/google/protobuf/nano/Extension;
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

.field public static final parcelable:Lcom/google/protobuf/nano/Extension;
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

    const-wide/32 v2, 0x45bfd110

    .line 15
    invoke-static {v1, v0, v2, v3}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lproto2/nano/nano/NanoDescriptor;->parcelable:Lcom/google/protobuf/nano/Extension;

    .line 25
    const-class v0, Ljava/lang/Boolean;

    const-wide/32 v2, 0x4663df20

    .line 26
    invoke-static {v1, v0, v2, v3}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lproto2/nano/nano/NanoDescriptor;->legacyOneof:Lcom/google/protobuf/nano/Extension;

    .line 36
    const-class v0, Ljava/lang/Boolean;

    const-wide/32 v2, 0x473f92d8

    .line 37
    invoke-static {v1, v0, v2, v3}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lproto2/nano/nano/NanoDescriptor;->messageAsLite:Lcom/google/protobuf/nano/Extension;

    .line 47
    const-class v0, Ljava/lang/Boolean;

    const-wide/32 v2, 0x473fae58

    .line 48
    invoke-static {v1, v0, v2, v3}, Lcom/google/protobuf/nano/Extension;->createPrimitiveTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lproto2/nano/nano/NanoDescriptor;->enumAsLite:Lcom/google/protobuf/nano/Extension;

    .line 47
    return-void
.end method

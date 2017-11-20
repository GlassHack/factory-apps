.class public Lorg/ejml/EjmlParameters;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ejml/EjmlParameters$MemoryUsage;
    }
.end annotation


# static fields
.field public static BLOCK_SIZE:I

.field public static BLOCK_WIDTH:I

.field public static BLOCK_WIDTH_CHOL:I

.field public static MEMORY:Lorg/ejml/EjmlParameters$MemoryUsage;

.field public static MULT_COLUMN_SWITCH:I

.field public static MULT_INNER_SWITCH:I

.field public static MULT_TRANAB_COLUMN_SWITCH:I

.field public static SWITCH_BLOCK64_CHOLESKY:I

.field public static SWITCH_BLOCK64_QR:I

.field public static TRANSPOSE_SWITCH:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/ejml/EjmlParameters$MemoryUsage;->FASTER:Lorg/ejml/EjmlParameters$MemoryUsage;

    sput-object v0, Lorg/ejml/EjmlParameters;->MEMORY:Lorg/ejml/EjmlParameters$MemoryUsage;

    const/16 v0, 0x3c

    sput v0, Lorg/ejml/EjmlParameters;->BLOCK_WIDTH:I

    const/16 v0, 0x14

    sput v0, Lorg/ejml/EjmlParameters;->BLOCK_WIDTH_CHOL:I

    sget v0, Lorg/ejml/EjmlParameters;->BLOCK_WIDTH:I

    sget v1, Lorg/ejml/EjmlParameters;->BLOCK_WIDTH:I

    mul-int/2addr v0, v1

    sput v0, Lorg/ejml/EjmlParameters;->BLOCK_SIZE:I

    const/16 v0, 0x177

    sput v0, Lorg/ejml/EjmlParameters;->TRANSPOSE_SWITCH:I

    const/16 v0, 0xf

    sput v0, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    const/16 v0, 0x28

    sput v0, Lorg/ejml/EjmlParameters;->MULT_TRANAB_COLUMN_SWITCH:I

    const/16 v0, 0x64

    sput v0, Lorg/ejml/EjmlParameters;->MULT_INNER_SWITCH:I

    const/16 v0, 0x3e8

    sput v0, Lorg/ejml/EjmlParameters;->SWITCH_BLOCK64_CHOLESKY:I

    const/16 v0, 0x5dc

    sput v0, Lorg/ejml/EjmlParameters;->SWITCH_BLOCK64_QR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

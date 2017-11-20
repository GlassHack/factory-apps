.class public final enum Lorg/ejml/EjmlParameters$MemoryUsage;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ejml/EjmlParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MemoryUsage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/ejml/EjmlParameters$MemoryUsage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/ejml/EjmlParameters$MemoryUsage;

.field public static final enum FASTER:Lorg/ejml/EjmlParameters$MemoryUsage;

.field public static final enum LOW_MEMORY:Lorg/ejml/EjmlParameters$MemoryUsage;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/ejml/EjmlParameters$MemoryUsage;

    const-string v1, "LOW_MEMORY"

    invoke-direct {v0, v1, v2}, Lorg/ejml/EjmlParameters$MemoryUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ejml/EjmlParameters$MemoryUsage;->LOW_MEMORY:Lorg/ejml/EjmlParameters$MemoryUsage;

    new-instance v0, Lorg/ejml/EjmlParameters$MemoryUsage;

    const-string v1, "FASTER"

    invoke-direct {v0, v1, v3}, Lorg/ejml/EjmlParameters$MemoryUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ejml/EjmlParameters$MemoryUsage;->FASTER:Lorg/ejml/EjmlParameters$MemoryUsage;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/ejml/EjmlParameters$MemoryUsage;

    sget-object v1, Lorg/ejml/EjmlParameters$MemoryUsage;->LOW_MEMORY:Lorg/ejml/EjmlParameters$MemoryUsage;

    aput-object v1, v0, v2

    sget-object v1, Lorg/ejml/EjmlParameters$MemoryUsage;->FASTER:Lorg/ejml/EjmlParameters$MemoryUsage;

    aput-object v1, v0, v3

    sput-object v0, Lorg/ejml/EjmlParameters$MemoryUsage;->$VALUES:[Lorg/ejml/EjmlParameters$MemoryUsage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/ejml/EjmlParameters$MemoryUsage;
    .locals 1

    const-class v0, Lorg/ejml/EjmlParameters$MemoryUsage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/ejml/EjmlParameters$MemoryUsage;

    return-object v0
.end method

.method public static values()[Lorg/ejml/EjmlParameters$MemoryUsage;
    .locals 1

    sget-object v0, Lorg/ejml/EjmlParameters$MemoryUsage;->$VALUES:[Lorg/ejml/EjmlParameters$MemoryUsage;

    invoke-virtual {v0}, [Lorg/ejml/EjmlParameters$MemoryUsage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/ejml/EjmlParameters$MemoryUsage;

    return-object v0
.end method

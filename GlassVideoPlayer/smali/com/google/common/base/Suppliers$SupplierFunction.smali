.class final enum Lcom/google/common/base/Suppliers$SupplierFunction;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/v;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/base/Suppliers$SupplierFunction;

.field public static final enum INSTANCE:Lcom/google/common/base/Suppliers$SupplierFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 298
    new-instance v0, Lcom/google/common/base/Suppliers$SupplierFunction;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/Suppliers$SupplierFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/Suppliers$SupplierFunction;->INSTANCE:Lcom/google/common/base/Suppliers$SupplierFunction;

    .line 297
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/base/Suppliers$SupplierFunction;

    sget-object v1, Lcom/google/common/base/Suppliers$SupplierFunction;->INSTANCE:Lcom/google/common/base/Suppliers$SupplierFunction;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/base/Suppliers$SupplierFunction;->$VALUES:[Lcom/google/common/base/Suppliers$SupplierFunction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/Suppliers$SupplierFunction;
    .locals 1

    .prologue
    .line 297
    const-class v0, Lcom/google/common/base/Suppliers$SupplierFunction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Suppliers$SupplierFunction;

    return-object v0
.end method

.method public static values()[Lcom/google/common/base/Suppliers$SupplierFunction;
    .locals 1

    .prologue
    .line 297
    sget-object v0, Lcom/google/common/base/Suppliers$SupplierFunction;->$VALUES:[Lcom/google/common/base/Suppliers$SupplierFunction;

    invoke-virtual {v0}, [Lcom/google/common/base/Suppliers$SupplierFunction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/base/Suppliers$SupplierFunction;

    return-object v0
.end method


# virtual methods
.method public final apply(Lcom/google/common/base/av;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 301
    invoke-interface {p1}, Lcom/google/common/base/av;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 297
    check-cast p1, Lcom/google/common/base/av;

    invoke-virtual {p0, p1}, Lcom/google/common/base/Suppliers$SupplierFunction;->apply(Lcom/google/common/base/av;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    const-string v0, "Suppliers.supplierFunction()"

    return-object v0
.end method

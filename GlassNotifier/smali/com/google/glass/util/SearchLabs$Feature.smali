.class public final enum Lcom/google/glass/util/SearchLabs$Feature;
.super Ljava/lang/Enum;
.source "SearchLabs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/SearchLabs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/util/SearchLabs$Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/util/SearchLabs$Feature;

.field public static final enum PCA:Lcom/google/glass/util/SearchLabs$Feature;


# instance fields
.field private final defaultValue:Z

.field private isSetByTest:Z

.field private final propertyKey:Ljava/lang/String;

.field private testValue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/google/glass/util/SearchLabs$Feature;

    const-string v1, "PCA"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/glass/util/SearchLabs$Feature;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/glass/util/SearchLabs$Feature;->PCA:Lcom/google/glass/util/SearchLabs$Feature;

    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/glass/util/SearchLabs$Feature;

    sget-object v1, Lcom/google/glass/util/SearchLabs$Feature;->PCA:Lcom/google/glass/util/SearchLabs$Feature;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/glass/util/SearchLabs$Feature;->$VALUES:[Lcom/google/glass/util/SearchLabs$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 3
    .param p3, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput-boolean p3, p0, Lcom/google/glass/util/SearchLabs$Feature;->defaultValue:Z

    .line 48
    const-string v1, "persist.search.lab."

    invoke-virtual {p0}, Lcom/google/glass/util/SearchLabs$Feature;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/glass/util/SearchLabs$Feature;->propertyKey:Ljava/lang/String;

    .line 49
    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/glass/util/SearchLabs$Feature;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/util/SearchLabs$Feature;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/glass/util/SearchLabs$Feature;->isSetByTest()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/glass/util/SearchLabs$Feature;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/util/SearchLabs$Feature;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/glass/util/SearchLabs$Feature;->getTestValue()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/glass/util/SearchLabs$Feature;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/util/SearchLabs$Feature;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/glass/util/SearchLabs$Feature;->getDefaultValue()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/glass/util/SearchLabs$Feature;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/util/SearchLabs$Feature;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/glass/util/SearchLabs$Feature;->getPropertyKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/util/SearchLabs$Feature;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/util/SearchLabs$Feature;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/google/glass/util/SearchLabs$Feature;->setTestValue(Z)V

    return-void
.end method

.method private getDefaultValue()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/google/glass/util/SearchLabs$Feature;->defaultValue:Z

    return v0
.end method

.method private getPropertyKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/util/SearchLabs$Feature;->propertyKey:Ljava/lang/String;

    return-object v0
.end method

.method private getTestValue()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/google/glass/util/SearchLabs$Feature;->testValue:Z

    return v0
.end method

.method private isSetByTest()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/google/glass/util/SearchLabs$Feature;->isSetByTest:Z

    return v0
.end method

.method private setTestValue(Z)V
    .locals 1
    .param p1, "testValue"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/google/glass/util/SearchLabs$Feature;->testValue:Z

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/util/SearchLabs$Feature;->isSetByTest:Z

    .line 66
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/util/SearchLabs$Feature;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/google/glass/util/SearchLabs$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/SearchLabs$Feature;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/util/SearchLabs$Feature;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/glass/util/SearchLabs$Feature;->$VALUES:[Lcom/google/glass/util/SearchLabs$Feature;

    invoke-virtual {v0}, [Lcom/google/glass/util/SearchLabs$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/util/SearchLabs$Feature;

    return-object v0
.end method

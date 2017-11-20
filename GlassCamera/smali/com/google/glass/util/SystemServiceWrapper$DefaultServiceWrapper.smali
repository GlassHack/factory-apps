.class Lcom/google/glass/util/SystemServiceWrapper$DefaultServiceWrapper;
.super Lcom/google/glass/util/SystemServiceWrapper;
.source "SystemServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/SystemServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultServiceWrapper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/glass/util/SystemServiceWrapper;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/util/SystemServiceWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/util/SystemServiceWrapper$1;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/glass/util/SystemServiceWrapper$DefaultServiceWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")TO;"
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

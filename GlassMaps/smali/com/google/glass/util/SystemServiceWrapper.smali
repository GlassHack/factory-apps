.class public abstract Lcom/google/glass/util/SystemServiceWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lcom/google/glass/util/SystemServiceWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static getInstance()Lcom/google/glass/util/SystemServiceWrapper;
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lcom/google/glass/util/SystemServiceWrapper;->instance:Lcom/google/glass/util/SystemServiceWrapper;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/google/glass/util/SystemServiceWrapper$DefaultServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/glass/util/SystemServiceWrapper$DefaultServiceWrapper;-><init>(Lcom/google/glass/util/SystemServiceWrapper$1;)V

    sput-object v0, Lcom/google/glass/util/SystemServiceWrapper;->instance:Lcom/google/glass/util/SystemServiceWrapper;

    .line 33
    :cond_0
    sget-object v0, Lcom/google/glass/util/SystemServiceWrapper;->instance:Lcom/google/glass/util/SystemServiceWrapper;

    return-object v0
.end method

.method public static setInstanceForTest(Lcom/google/glass/util/SystemServiceWrapper;)V
    .locals 0

    .prologue
    .line 41
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 42
    sput-object p0, Lcom/google/glass/util/SystemServiceWrapper;->instance:Lcom/google/glass/util/SystemServiceWrapper;

    .line 43
    return-void
.end method


# virtual methods
.method public abstract getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
.end method

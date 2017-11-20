.class public final Lcom/google/glass/util/PowerHelperProvider;
.super Lcom/google/glass/inject/Provider;
.source "SourceFile"


# static fields
.field private static final instance:Lcom/google/glass/util/PowerHelperProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/google/glass/util/PowerHelperProvider;

    invoke-direct {v0}, Lcom/google/glass/util/PowerHelperProvider;-><init>()V

    sput-object v0, Lcom/google/glass/util/PowerHelperProvider;->instance:Lcom/google/glass/util/PowerHelperProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/util/PowerHelperProvider;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/google/glass/util/PowerHelperProvider;->instance:Lcom/google/glass/util/PowerHelperProvider;

    return-object v0
.end method


# virtual methods
.method public final from(Landroid/content/Context;)Lcom/google/glass/util/PowerHelper;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/google/glass/util/PowerHelperProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/util/PowerHelperProvider$1;-><init>(Lcom/google/glass/util/PowerHelperProvider;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/util/PowerHelperProvider;->get(Lcom/google/common/base/av;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/PowerHelper;

    return-object v0
.end method

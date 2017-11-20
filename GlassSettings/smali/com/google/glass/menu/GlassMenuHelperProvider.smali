.class public final Lcom/google/glass/menu/GlassMenuHelperProvider;
.super Lcom/google/glass/inject/Provider;
.source "GlassMenuHelperProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/menu/GlassMenuHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/glass/menu/GlassMenuHelperProvider;


# instance fields
.field private glassMenuHelper:Lcom/google/glass/menu/GlassMenuHelper;

.field private final supplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/google/glass/menu/GlassMenuHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/google/glass/menu/GlassMenuHelperProvider;

    invoke-direct {v0}, Lcom/google/glass/menu/GlassMenuHelperProvider;-><init>()V

    sput-object v0, Lcom/google/glass/menu/GlassMenuHelperProvider;->INSTANCE:Lcom/google/glass/menu/GlassMenuHelperProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    .line 12
    new-instance v0, Lcom/google/glass/menu/GlassMenuHelper;

    invoke-direct {v0}, Lcom/google/glass/menu/GlassMenuHelper;-><init>()V

    iput-object v0, p0, Lcom/google/glass/menu/GlassMenuHelperProvider;->glassMenuHelper:Lcom/google/glass/menu/GlassMenuHelper;

    .line 13
    new-instance v0, Lcom/google/glass/menu/GlassMenuHelperProvider$1;

    invoke-direct {v0, p0}, Lcom/google/glass/menu/GlassMenuHelperProvider$1;-><init>(Lcom/google/glass/menu/GlassMenuHelperProvider;)V

    iput-object v0, p0, Lcom/google/glass/menu/GlassMenuHelperProvider;->supplier:Lcom/google/common/base/Supplier;

    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/menu/GlassMenuHelperProvider;)Lcom/google/glass/menu/GlassMenuHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/menu/GlassMenuHelperProvider;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/glass/menu/GlassMenuHelperProvider;->glassMenuHelper:Lcom/google/glass/menu/GlassMenuHelper;

    return-object v0
.end method

.method public static getInstance()Lcom/google/glass/menu/GlassMenuHelperProvider;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/glass/menu/GlassMenuHelperProvider;->INSTANCE:Lcom/google/glass/menu/GlassMenuHelperProvider;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/glass/menu/GlassMenuHelper;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/menu/GlassMenuHelperProvider;->supplier:Lcom/google/common/base/Supplier;

    invoke-virtual {p0, v0}, Lcom/google/glass/menu/GlassMenuHelperProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/menu/GlassMenuHelper;

    return-object v0
.end method

.method public setGlassMenuHelper(Lcom/google/glass/menu/GlassMenuHelper;)V
    .locals 0
    .param p1, "glassMenuHelper"    # Lcom/google/glass/menu/GlassMenuHelper;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/glass/menu/GlassMenuHelperProvider;->glassMenuHelper:Lcom/google/glass/menu/GlassMenuHelper;

    .line 29
    return-void
.end method

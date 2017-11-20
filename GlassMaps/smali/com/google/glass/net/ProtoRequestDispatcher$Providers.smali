.class public final Lcom/google/glass/net/ProtoRequestDispatcher$Providers;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PRIMARY_PROVIDER:Lcom/google/glass/inject/InitializableProvider;

.field private static final SECONDARY_PROVIDER:Lcom/google/glass/inject/InitializableProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 758
    new-instance v0, Lcom/google/glass/inject/InitializableProvider;

    invoke-direct {v0}, Lcom/google/glass/inject/InitializableProvider;-><init>()V

    sput-object v0, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->PRIMARY_PROVIDER:Lcom/google/glass/inject/InitializableProvider;

    .line 761
    new-instance v0, Lcom/google/glass/inject/InitializableProvider;

    invoke-direct {v0}, Lcom/google/glass/inject/InitializableProvider;-><init>()V

    sput-object v0, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->SECONDARY_PROVIDER:Lcom/google/glass/inject/InitializableProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPrimaryDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;
    .locals 1

    .prologue
    .line 772
    sget-object v0, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->PRIMARY_PROVIDER:Lcom/google/glass/inject/InitializableProvider;

    invoke-virtual {v0}, Lcom/google/glass/inject/InitializableProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/net/ProtoRequestDispatcher;

    return-object v0
.end method

.method public static getPrimaryProvider()Lcom/google/glass/inject/InitializableProvider;
    .locals 1

    .prologue
    .line 786
    sget-object v0, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->PRIMARY_PROVIDER:Lcom/google/glass/inject/InitializableProvider;

    return-object v0
.end method

.method public static getSecondaryDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;
    .locals 1

    .prologue
    .line 782
    sget-object v0, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->SECONDARY_PROVIDER:Lcom/google/glass/inject/InitializableProvider;

    invoke-virtual {v0}, Lcom/google/glass/inject/InitializableProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/net/ProtoRequestDispatcher;

    return-object v0
.end method

.method public static getSecondaryProvider()Lcom/google/glass/inject/InitializableProvider;
    .locals 1

    .prologue
    .line 790
    sget-object v0, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->SECONDARY_PROVIDER:Lcom/google/glass/inject/InitializableProvider;

    return-object v0
.end method

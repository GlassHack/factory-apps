.class public final Lcom/google/glass/net/ProtoRequestDispatcher$Providers;
.super Ljava/lang/Object;
.source "ProtoRequestDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/net/ProtoRequestDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Providers"
.end annotation


# static fields
.field private static final PRIMARY_PROVIDER:Lcom/google/glass/inject/InitializableProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/inject/InitializableProvider",
            "<",
            "Lcom/google/glass/net/ProtoRequestDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private static final SECONDARY_PROVIDER:Lcom/google/glass/inject/InitializableProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/inject/InitializableProvider",
            "<",
            "Lcom/google/glass/net/ProtoRequestDispatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 781
    new-instance v0, Lcom/google/glass/inject/InitializableProvider;

    invoke-direct {v0}, Lcom/google/glass/inject/InitializableProvider;-><init>()V

    sput-object v0, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->PRIMARY_PROVIDER:Lcom/google/glass/inject/InitializableProvider;

    .line 784
    new-instance v0, Lcom/google/glass/inject/InitializableProvider;

    invoke-direct {v0}, Lcom/google/glass/inject/InitializableProvider;-><init>()V

    sput-object v0, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->SECONDARY_PROVIDER:Lcom/google/glass/inject/InitializableProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPrimaryDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;
    .locals 1

    .prologue
    .line 795
    sget-object v0, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->PRIMARY_PROVIDER:Lcom/google/glass/inject/InitializableProvider;

    invoke-virtual {v0}, Lcom/google/glass/inject/InitializableProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/net/ProtoRequestDispatcher;

    return-object v0
.end method

.method public static getPrimaryProvider()Lcom/google/glass/inject/InitializableProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/glass/inject/InitializableProvider",
            "<",
            "Lcom/google/glass/net/ProtoRequestDispatcher;",
            ">;"
        }
    .end annotation

    .prologue
    .line 809
    sget-object v0, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->PRIMARY_PROVIDER:Lcom/google/glass/inject/InitializableProvider;

    return-object v0
.end method

.method public static getSecondaryDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;
    .locals 1

    .prologue
    .line 805
    sget-object v0, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->SECONDARY_PROVIDER:Lcom/google/glass/inject/InitializableProvider;

    invoke-virtual {v0}, Lcom/google/glass/inject/InitializableProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/net/ProtoRequestDispatcher;

    return-object v0
.end method

.method public static getSecondaryProvider()Lcom/google/glass/inject/InitializableProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/glass/inject/InitializableProvider",
            "<",
            "Lcom/google/glass/net/ProtoRequestDispatcher;",
            ">;"
        }
    .end annotation

    .prologue
    .line 813
    sget-object v0, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->SECONDARY_PROVIDER:Lcom/google/glass/inject/InitializableProvider;

    return-object v0
.end method

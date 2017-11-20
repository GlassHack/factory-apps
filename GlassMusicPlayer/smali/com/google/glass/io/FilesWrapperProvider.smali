.class public final Lcom/google/glass/io/FilesWrapperProvider;
.super Lcom/google/glass/inject/Provider;
.source "SourceFile"


# static fields
.field private static final instance:Lcom/google/glass/io/FilesWrapperProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/google/glass/io/FilesWrapperProvider;

    invoke-direct {v0}, Lcom/google/glass/io/FilesWrapperProvider;-><init>()V

    sput-object v0, Lcom/google/glass/io/FilesWrapperProvider;->instance:Lcom/google/glass/io/FilesWrapperProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/io/FilesWrapperProvider;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/google/glass/io/FilesWrapperProvider;->instance:Lcom/google/glass/io/FilesWrapperProvider;

    return-object v0
.end method


# virtual methods
.method public final get()Lcom/google/glass/io/FilesWrapper;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/google/glass/io/FilesWrapperProvider$1;

    invoke-direct {v0, p0}, Lcom/google/glass/io/FilesWrapperProvider$1;-><init>(Lcom/google/glass/io/FilesWrapperProvider;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/io/FilesWrapperProvider;->get(Lcom/google/common/base/aw;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/io/FilesWrapper;

    return-object v0
.end method

.class public final Lcom/google/glass/fs/FilesystemProvider;
.super Lcom/google/glass/inject/Provider;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/google/glass/fs/FilesystemProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/google/glass/fs/FilesystemProvider;

    invoke-direct {v0}, Lcom/google/glass/fs/FilesystemProvider;-><init>()V

    sput-object v0, Lcom/google/glass/fs/FilesystemProvider;->INSTANCE:Lcom/google/glass/fs/FilesystemProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/fs/FilesystemProvider;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/glass/fs/FilesystemProvider;->INSTANCE:Lcom/google/glass/fs/FilesystemProvider;

    return-object v0
.end method


# virtual methods
.method public final get()Lcom/google/glass/fs/Filesystem;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/google/glass/fs/FilesystemProvider$1;

    invoke-direct {v0, p0}, Lcom/google/glass/fs/FilesystemProvider$1;-><init>(Lcom/google/glass/fs/FilesystemProvider;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/fs/FilesystemProvider;->get(Lcom/google/common/base/aw;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/fs/Filesystem;

    return-object v0
.end method

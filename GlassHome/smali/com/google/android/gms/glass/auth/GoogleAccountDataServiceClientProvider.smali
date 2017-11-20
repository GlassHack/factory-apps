.class public final Lcom/google/android/gms/glass/auth/GoogleAccountDataServiceClientProvider;
.super Lcom/google/glass/inject/Provider;
.source "GoogleAccountDataServiceClientProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/android/gms/glass/auth/GoogleAccountDataServiceClientProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/android/gms/glass/auth/GoogleAccountDataServiceClientProvider;

    invoke-direct {v0}, Lcom/google/android/gms/glass/auth/GoogleAccountDataServiceClientProvider;-><init>()V

    sput-object v0, Lcom/google/android/gms/glass/auth/GoogleAccountDataServiceClientProvider;->INSTANCE:Lcom/google/android/gms/glass/auth/GoogleAccountDataServiceClientProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/android/gms/glass/auth/GoogleAccountDataServiceClientProvider;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/android/gms/glass/auth/GoogleAccountDataServiceClientProvider;->INSTANCE:Lcom/google/android/gms/glass/auth/GoogleAccountDataServiceClientProvider;

    return-object v0
.end method


# virtual methods
.method public get(Landroid/content/Context;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const-string v0, "null context"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance v0, Lcom/google/android/gms/glass/auth/GoogleAccountDataServiceClientProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/glass/auth/GoogleAccountDataServiceClientProvider$1;-><init>(Lcom/google/android/gms/glass/auth/GoogleAccountDataServiceClientProvider;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/glass/auth/GoogleAccountDataServiceClientProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

    return-object v0
.end method

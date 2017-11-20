.class Lcom/google/android/gms/glass/auth/GoogleAccountDataServiceClientProvider$1;
.super Ljava/lang/Object;
.source "GoogleAccountDataServiceClientProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/glass/auth/GoogleAccountDataServiceClientProvider;->get(Landroid/content/Context;)Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/glass/auth/GoogleAccountDataServiceClientProvider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/gms/glass/auth/GoogleAccountDataServiceClientProvider;

    .prologue
    .line 33
    iput-object p2, p0, Lcom/google/android/gms/glass/auth/GoogleAccountDataServiceClientProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

    iget-object v1, p0, Lcom/google/android/gms/glass/auth/GoogleAccountDataServiceClientProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/glass/auth/GoogleAccountDataServiceClientProvider$1;->get()Lcom/google/android/gms/auth/firstparty/dataservice/GoogleAccountDataServiceClient;

    move-result-object v0

    return-object v0
.end method

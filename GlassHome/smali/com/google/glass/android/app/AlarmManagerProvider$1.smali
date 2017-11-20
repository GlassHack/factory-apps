.class Lcom/google/glass/android/app/AlarmManagerProvider$1;
.super Ljava/lang/Object;
.source "AlarmManagerProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/android/app/AlarmManagerProvider;->from(Landroid/content/Context;)Landroid/app/AlarmManager;
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
        "Landroid/app/AlarmManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/android/app/AlarmManagerProvider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/android/app/AlarmManagerProvider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/android/app/AlarmManagerProvider;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/glass/android/app/AlarmManagerProvider$1;->this$0:Lcom/google/glass/android/app/AlarmManagerProvider;

    iput-object p2, p0, Lcom/google/glass/android/app/AlarmManagerProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Landroid/app/AlarmManager;
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/glass/android/app/AlarmManagerProvider$1;->val$context:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/glass/android/app/AlarmManagerProvider$1;->get()Landroid/app/AlarmManager;

    move-result-object v0

    return-object v0
.end method

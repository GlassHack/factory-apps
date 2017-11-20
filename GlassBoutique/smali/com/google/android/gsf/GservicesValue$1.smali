.class final Lcom/google/android/gsf/GservicesValue$1;
.super Lcom/google/android/gsf/GservicesValue;
.source "GservicesValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/GservicesValue;->value(Ljava/lang/String;Z)Lcom/google/android/gsf/GservicesValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gsf/GservicesValue",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/GservicesValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected retrieve(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {}, Lcom/google/android/gsf/GservicesValue;->access$000()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/GservicesValue$1;->mKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gsf/GservicesValue$1;->mDefaultValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic retrieve(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/GservicesValue$1;->retrieve(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

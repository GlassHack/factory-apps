.class final Lcom/google/protobuf/java_com_google_android_apps_glass_notifier__GlassNotifier_bbfca963GeneratedExtensionRegistryLite;
.super Lcom/google/protobuf/ExtensionRegistryLite;
.source "java_com_google_android_apps_glass_notifier__GlassNotifier_bbfca963GeneratedExtensionRegistryLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/java_com_google_android_apps_glass_notifier__GlassNotifier_bbfca963GeneratedExtensionRegistryLite$Loader;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/ExtensionRegistryLite;-><init>(Z)V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/ExtensionRegistryLite;
    .locals 1

    .prologue
    .line 8
    invoke-static {}, Lcom/google/protobuf/java_com_google_android_apps_glass_notifier__GlassNotifier_bbfca963GeneratedExtensionRegistryLite;->getInstance()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    return-object v0
.end method

.method private static getInstance()Lcom/google/protobuf/ExtensionRegistryLite;
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public findLiteExtensionByNumber(Lcom/google/protobuf/MessageLite;I)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<CT::",
            "Lcom/google/protobuf/MessageLite;",
            ">(TCT;I)",
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TCT;*>;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnmodifiable()Lcom/google/protobuf/ExtensionRegistryLite;
    .locals 0

    .prologue
    .line 25
    return-object p0
.end method

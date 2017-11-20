.class public Lcom/google/glass/util/SetupHelper$WifiSetupInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public encryption:Lcom/google/glass/util/WifiHelper$Encryption;

.field public key:Ljava/lang/String;

.field public ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/google/glass/util/SetupHelper$WifiSetupInfo;->ssid:Ljava/lang/String;

    .line 146
    iput-object p2, p0, Lcom/google/glass/util/SetupHelper$WifiSetupInfo;->encryption:Lcom/google/glass/util/WifiHelper$Encryption;

    .line 147
    iput-object p3, p0, Lcom/google/glass/util/SetupHelper$WifiSetupInfo;->key:Ljava/lang/String;

    .line 148
    return-void
.end method

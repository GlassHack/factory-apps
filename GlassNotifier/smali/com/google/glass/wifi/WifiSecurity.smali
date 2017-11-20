.class public final enum Lcom/google/glass/wifi/WifiSecurity;
.super Ljava/lang/Enum;
.source "WifiSecurity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/wifi/WifiSecurity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/wifi/WifiSecurity;

.field public static final enum IEEE8021X:Lcom/google/glass/wifi/WifiSecurity;

.field public static final enum NONE:Lcom/google/glass/wifi/WifiSecurity;

.field public static final enum WEP:Lcom/google/glass/wifi/WifiSecurity;

.field public static final enum WPA:Lcom/google/glass/wifi/WifiSecurity;

.field public static final enum WPA_EAP:Lcom/google/glass/wifi/WifiSecurity;


# instance fields
.field private final keyManagement:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/google/glass/wifi/WifiSecurity;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/glass/wifi/WifiSecurity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/glass/wifi/WifiSecurity;->NONE:Lcom/google/glass/wifi/WifiSecurity;

    .line 13
    new-instance v0, Lcom/google/glass/wifi/WifiSecurity;

    const-string v1, "WPA"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/glass/wifi/WifiSecurity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/glass/wifi/WifiSecurity;->WPA:Lcom/google/glass/wifi/WifiSecurity;

    .line 14
    new-instance v0, Lcom/google/glass/wifi/WifiSecurity;

    const-string v1, "WEP"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/glass/wifi/WifiSecurity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/glass/wifi/WifiSecurity;->WEP:Lcom/google/glass/wifi/WifiSecurity;

    .line 15
    new-instance v0, Lcom/google/glass/wifi/WifiSecurity;

    const-string v1, "WPA_EAP"

    invoke-direct {v0, v1, v5, v4}, Lcom/google/glass/wifi/WifiSecurity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/glass/wifi/WifiSecurity;->WPA_EAP:Lcom/google/glass/wifi/WifiSecurity;

    .line 16
    new-instance v0, Lcom/google/glass/wifi/WifiSecurity;

    const-string v1, "IEEE8021X"

    invoke-direct {v0, v1, v6, v5}, Lcom/google/glass/wifi/WifiSecurity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/glass/wifi/WifiSecurity;->IEEE8021X:Lcom/google/glass/wifi/WifiSecurity;

    .line 10
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/glass/wifi/WifiSecurity;

    sget-object v1, Lcom/google/glass/wifi/WifiSecurity;->NONE:Lcom/google/glass/wifi/WifiSecurity;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/wifi/WifiSecurity;->WPA:Lcom/google/glass/wifi/WifiSecurity;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/wifi/WifiSecurity;->WEP:Lcom/google/glass/wifi/WifiSecurity;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/wifi/WifiSecurity;->WPA_EAP:Lcom/google/glass/wifi/WifiSecurity;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/wifi/WifiSecurity;->IEEE8021X:Lcom/google/glass/wifi/WifiSecurity;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/glass/wifi/WifiSecurity;->$VALUES:[Lcom/google/glass/wifi/WifiSecurity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "keyManagement"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/google/glass/wifi/WifiSecurity;->keyManagement:I

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/wifi/WifiSecurity;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/google/glass/wifi/WifiSecurity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/wifi/WifiSecurity;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/wifi/WifiSecurity;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/google/glass/wifi/WifiSecurity;->$VALUES:[Lcom/google/glass/wifi/WifiSecurity;

    invoke-virtual {v0}, [Lcom/google/glass/wifi/WifiSecurity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/wifi/WifiSecurity;

    return-object v0
.end method


# virtual methods
.method public getKeyManagement()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/google/glass/wifi/WifiSecurity;->keyManagement:I

    return v0
.end method

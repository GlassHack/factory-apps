.class public final enum Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;
.super Ljava/lang/Enum;
.source "AnalyticsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Page"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

.field public static final enum BEGIN_CAPTURE:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

.field public static final enum DELETE_SESSION:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

.field public static final enum END_CAPTURE:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

.field public static final enum GALLERY:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

.field public static final enum HELP:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

.field public static final enum LAST_HELP_PAGE:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

.field public static final enum MAIN_MENU:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

.field public static final enum STITCH_COMPLETE:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

.field public static final enum UPLOAD_START:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

.field public static final enum UPLOAD_SUCCESSFUL:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

.field public static final enum VIEW_PANORAMA:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    new-instance v0, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    const-string v1, "BEGIN_CAPTURE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;->BEGIN_CAPTURE:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    new-instance v0, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    const-string v1, "END_CAPTURE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;->END_CAPTURE:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    new-instance v0, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    const-string v1, "VIEW_PANORAMA"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;->VIEW_PANORAMA:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    new-instance v0, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    const-string v1, "MAIN_MENU"

    invoke-direct {v0, v1, v6}, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;->MAIN_MENU:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    new-instance v0, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    const-string v1, "GALLERY"

    invoke-direct {v0, v1, v7}, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;->GALLERY:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    new-instance v0, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    const-string v1, "HELP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;->HELP:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    .line 18
    new-instance v0, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    const-string v1, "LAST_HELP_PAGE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;->LAST_HELP_PAGE:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    new-instance v0, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    const-string v1, "STITCH_COMPLETE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;->STITCH_COMPLETE:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    new-instance v0, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    const-string v1, "UPLOAD_START"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;->UPLOAD_START:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    new-instance v0, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    const-string v1, "UPLOAD_SUCCESSFUL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;->UPLOAD_SUCCESSFUL:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    .line 19
    new-instance v0, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    const-string v1, "DELETE_SESSION"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;->DELETE_SESSION:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    .line 16
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    sget-object v1, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;->BEGIN_CAPTURE:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;->END_CAPTURE:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;->VIEW_PANORAMA:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;->MAIN_MENU:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;->GALLERY:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;->HELP:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;->LAST_HELP_PAGE:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;->STITCH_COMPLETE:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;->UPLOAD_START:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;->UPLOAD_SUCCESSFUL:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;->DELETE_SESSION:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;->$VALUES:[Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;->$VALUES:[Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    invoke-virtual {v0}, [Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    return-object v0
.end method

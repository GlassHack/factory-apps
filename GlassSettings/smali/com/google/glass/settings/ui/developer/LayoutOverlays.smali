.class public Lcom/google/glass/settings/ui/developer/LayoutOverlays;
.super Ljava/lang/Object;
.source "LayoutOverlays.java"


# static fields
.field public static final ALERT:Lcom/google/glass/settings/ui/developer/LayoutOverlay;

.field private static final ALERT_ICON_LEFT:I = 0xf0

.field private static final ALERT_ICON_SIZE:I = 0xa0

.field private static final ALERT_MESSAGE_HEIGHT:I = 0x28

.field private static final ALERT_PADDING:I = 0x14

.field public static final AUTHOR:Lcom/google/glass/settings/ui/developer/LayoutOverlay;

.field private static final AUTHOR_PADDING:I = 0xf

.field private static final BODY_HEIGHT:I = 0xf0

.field public static final CAPTION:Lcom/google/glass/settings/ui/developer/LayoutOverlay;

.field private static final CARD_MARGIN:I = 0x28

.field public static final COLUMNS:Lcom/google/glass/settings/ui/developer/LayoutOverlay;

.field private static final COMMON_MARGINS:Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;

.field private static final FOOTER_HEIGHT:I = 0x28

.field private static final FULL_WIDTH_FOOTER:Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;

.field private static final GUTTER_WIDTH:I = 0x1e

.field private static final LARGE_TEXT_HEIGHT:I = 0x46

.field private static final LEFT_COLUMN:Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;

.field private static final LEFT_COLUMN_GUTTER:Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;

.field private static final LEFT_COLUMN_WIDTH:I = 0xf0

.field public static final MENU:Lcom/google/glass/settings/ui/developer/LayoutOverlay;

.field private static final MENU_LABEL_TOP:I = 0x91

.field private static final ONLY_RIGHT_MARGINS:Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;

.field public static final OVERLAY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/settings/ui/developer/LayoutOverlay;",
            ">;"
        }
    .end annotation
.end field

.field public static final OVERLAY_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/settings/ui/developer/LayoutOverlay;",
            ">;"
        }
    .end annotation
.end field

.field private static final RIGHT_COLUMN_FOOTER:Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;

.field private static final RIGHT_COLUMN_FOOTER_WIDTH:I = 0x14a

.field public static final TEXT:Lcom/google/glass/settings/ui/developer/LayoutOverlay;

.field public static final TITLE:Lcom/google/glass/settings/ui/developer/LayoutOverlay;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/16 v13, 0xf0

    const/high16 v12, -0x10000

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/16 v9, 0x28

    .line 60
    new-instance v0, Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;

    sget v1, Lcom/google/glass/settings/ui/R$string;->layout_overlay_section_margins:I

    const/16 v2, 0xff

    .line 61
    invoke-static {v10, v2, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/google/glass/settings/ui/developer/RectBuilder;

    new-instance v4, Lcom/google/glass/settings/ui/developer/RectBuilder;

    invoke-direct {v4}, Lcom/google/glass/settings/ui/developer/RectBuilder;-><init>()V

    .line 62
    invoke-virtual {v4, v10}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setLeft(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setTop(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setWidth(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setHeight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    aput-object v4, v3, v10

    new-instance v4, Lcom/google/glass/settings/ui/developer/RectBuilder;

    invoke-direct {v4}, Lcom/google/glass/settings/ui/developer/RectBuilder;-><init>()V

    .line 63
    invoke-virtual {v4, v10}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setRight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setTop(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setWidth(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setHeight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    aput-object v4, v3, v11

    const/4 v4, 0x2

    new-instance v5, Lcom/google/glass/settings/ui/developer/RectBuilder;

    invoke-direct {v5}, Lcom/google/glass/settings/ui/developer/RectBuilder;-><init>()V

    .line 64
    invoke-virtual {v5, v10}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setLeft(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setBottom(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setWidth(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setHeight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Lcom/google/glass/settings/ui/developer/RectBuilder;

    invoke-direct {v5}, Lcom/google/glass/settings/ui/developer/RectBuilder;-><init>()V

    .line 65
    invoke-virtual {v5, v10}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setRight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setBottom(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setWidth(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setHeight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;-><init>(II[Lcom/google/glass/settings/ui/developer/RectBuilder;)V

    sput-object v0, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->COMMON_MARGINS:Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;

    .line 67
    new-instance v0, Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;

    sget v1, Lcom/google/glass/settings/ui/R$string;->layout_overlay_section_margins:I

    const/16 v2, 0xff

    .line 68
    invoke-static {v10, v2, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/glass/settings/ui/developer/RectBuilder;

    new-instance v4, Lcom/google/glass/settings/ui/developer/RectBuilder;

    invoke-direct {v4}, Lcom/google/glass/settings/ui/developer/RectBuilder;-><init>()V

    .line 69
    invoke-virtual {v4, v10}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setRight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setTop(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setWidth(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setHeight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    aput-object v4, v3, v10

    new-instance v4, Lcom/google/glass/settings/ui/developer/RectBuilder;

    invoke-direct {v4}, Lcom/google/glass/settings/ui/developer/RectBuilder;-><init>()V

    .line 70
    invoke-virtual {v4, v10}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setRight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setBottom(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setWidth(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setHeight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;-><init>(II[Lcom/google/glass/settings/ui/developer/RectBuilder;)V

    sput-object v0, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->ONLY_RIGHT_MARGINS:Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;

    .line 72
    new-instance v0, Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;

    sget v1, Lcom/google/glass/settings/ui/R$string;->layout_overlay_section_footer:I

    const v2, -0xffff01

    new-array v3, v11, [Lcom/google/glass/settings/ui/developer/RectBuilder;

    new-instance v4, Lcom/google/glass/settings/ui/developer/RectBuilder;

    invoke-direct {v4}, Lcom/google/glass/settings/ui/developer/RectBuilder;-><init>()V

    .line 74
    invoke-virtual {v4, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setLeft(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setRight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    .line 75
    invoke-virtual {v4, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setBottom(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setHeight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;-><init>(II[Lcom/google/glass/settings/ui/developer/RectBuilder;)V

    sput-object v0, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->FULL_WIDTH_FOOTER:Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;

    .line 77
    new-instance v0, Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;

    sget v1, Lcom/google/glass/settings/ui/R$string;->layout_overlay_section_footer:I

    const v2, -0xffff01

    new-array v3, v11, [Lcom/google/glass/settings/ui/developer/RectBuilder;

    new-instance v4, Lcom/google/glass/settings/ui/developer/RectBuilder;

    invoke-direct {v4}, Lcom/google/glass/settings/ui/developer/RectBuilder;-><init>()V

    .line 79
    invoke-virtual {v4, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setRight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    const/16 v5, 0x14a

    invoke-virtual {v4, v5}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setWidth(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    .line 80
    invoke-virtual {v4, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setBottom(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setHeight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;-><init>(II[Lcom/google/glass/settings/ui/developer/RectBuilder;)V

    sput-object v0, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->RIGHT_COLUMN_FOOTER:Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;

    .line 82
    new-instance v0, Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;

    sget v1, Lcom/google/glass/settings/ui/R$string;->layout_overlay_section_left_column:I

    const v2, -0xff0001

    new-array v3, v11, [Lcom/google/glass/settings/ui/developer/RectBuilder;

    new-instance v4, Lcom/google/glass/settings/ui/developer/RectBuilder;

    invoke-direct {v4}, Lcom/google/glass/settings/ui/developer/RectBuilder;-><init>()V

    .line 84
    invoke-virtual {v4, v10}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setLeft(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setTop(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setWidth(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setBottom(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;-><init>(II[Lcom/google/glass/settings/ui/developer/RectBuilder;)V

    sput-object v0, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->LEFT_COLUMN:Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;

    .line 86
    new-instance v0, Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;

    sget v1, Lcom/google/glass/settings/ui/R$string;->layout_overlay_section_gutter:I

    const/16 v2, -0x100

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/google/glass/settings/ui/developer/RectBuilder;

    new-instance v4, Lcom/google/glass/settings/ui/developer/RectBuilder;

    invoke-direct {v4}, Lcom/google/glass/settings/ui/developer/RectBuilder;-><init>()V

    .line 88
    invoke-virtual {v4, v10}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setLeft(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setBottom(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    const/16 v5, 0x1e

    invoke-virtual {v4, v5}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setWidth(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setHeight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    aput-object v4, v3, v10

    new-instance v4, Lcom/google/glass/settings/ui/developer/RectBuilder;

    invoke-direct {v4}, Lcom/google/glass/settings/ui/developer/RectBuilder;-><init>()V

    const/16 v5, 0xd2

    .line 89
    invoke-virtual {v4, v5}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setLeft(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setBottom(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    const/16 v5, 0x1e

    .line 90
    invoke-virtual {v4, v5}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setWidth(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setHeight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    aput-object v4, v3, v11

    const/4 v4, 0x2

    new-instance v5, Lcom/google/glass/settings/ui/developer/RectBuilder;

    invoke-direct {v5}, Lcom/google/glass/settings/ui/developer/RectBuilder;-><init>()V

    .line 91
    invoke-virtual {v5, v13}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setLeft(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setTop(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v5

    const/16 v6, 0x1e

    .line 92
    invoke-virtual {v5, v6}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setWidth(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setHeight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Lcom/google/glass/settings/ui/developer/RectBuilder;

    invoke-direct {v5}, Lcom/google/glass/settings/ui/developer/RectBuilder;-><init>()V

    .line 93
    invoke-virtual {v5, v13}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setLeft(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setBottom(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v5

    const/16 v6, 0x1e

    .line 94
    invoke-virtual {v5, v6}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setWidth(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setHeight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;-><init>(II[Lcom/google/glass/settings/ui/developer/RectBuilder;)V

    sput-object v0, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->LEFT_COLUMN_GUTTER:Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;

    .line 100
    new-instance v0, Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    const-string v1, "text"

    sget v2, Lcom/google/glass/settings/ui/R$string;->layout_overlay_text:I

    invoke-direct {v0, v1, v2}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;-><init>(Ljava/lang/String;I)V

    sget-object v1, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->COMMON_MARGINS:Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;

    .line 101
    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->addSection(Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;)Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    move-result-object v0

    sget-object v1, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->FULL_WIDTH_FOOTER:Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;

    .line 102
    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->addSection(Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;)Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$string;->layout_overlay_section_body:I

    new-array v2, v11, [Lcom/google/glass/settings/ui/developer/RectBuilder;

    new-instance v3, Lcom/google/glass/settings/ui/developer/RectBuilder;

    invoke-direct {v3}, Lcom/google/glass/settings/ui/developer/RectBuilder;-><init>()V

    .line 104
    invoke-virtual {v3, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setLeft(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setTop(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v3

    .line 105
    invoke-virtual {v3, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setRight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setHeight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v3

    aput-object v3, v2, v10

    .line 103
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->addSection(II[Lcom/google/glass/settings/ui/developer/RectBuilder;)Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->TEXT:Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    .line 108
    new-instance v0, Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    const-string v1, "columns"

    sget v2, Lcom/google/glass/settings/ui/R$string;->layout_overlay_columns:I

    invoke-direct {v0, v1, v2}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;-><init>(Ljava/lang/String;I)V

    sget-object v1, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->LEFT_COLUMN:Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;

    .line 110
    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->addSection(Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;)Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    move-result-object v0

    sget-object v1, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->LEFT_COLUMN_GUTTER:Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;

    .line 111
    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->addSection(Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;)Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    move-result-object v0

    sget-object v1, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->ONLY_RIGHT_MARGINS:Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;

    .line 112
    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->addSection(Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;)Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    move-result-object v0

    sget-object v1, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->RIGHT_COLUMN_FOOTER:Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;

    .line 113
    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->addSection(Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;)Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$string;->layout_overlay_section_body:I

    new-array v2, v11, [Lcom/google/glass/settings/ui/developer/RectBuilder;

    new-instance v3, Lcom/google/glass/settings/ui/developer/RectBuilder;

    invoke-direct {v3}, Lcom/google/glass/settings/ui/developer/RectBuilder;-><init>()V

    const/16 v4, 0x10e

    .line 115
    invoke-virtual {v3, v4}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setLeft(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setTop(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v3

    .line 116
    invoke-virtual {v3, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setRight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setHeight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v3

    aput-object v3, v2, v10

    .line 114
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->addSection(II[Lcom/google/glass/settings/ui/developer/RectBuilder;)Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->COLUMNS:Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    .line 119
    new-instance v0, Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    const-string v1, "caption"

    sget v2, Lcom/google/glass/settings/ui/R$string;->layout_overlay_caption:I

    invoke-direct {v0, v1, v2}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;-><init>(Ljava/lang/String;I)V

    sget-object v1, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->COMMON_MARGINS:Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;

    .line 121
    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->addSection(Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;)Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    move-result-object v0

    sget-object v1, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->FULL_WIDTH_FOOTER:Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;

    .line 122
    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->addSection(Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;)Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$string;->layout_overlay_section_body:I

    new-array v2, v11, [Lcom/google/glass/settings/ui/developer/RectBuilder;

    new-instance v3, Lcom/google/glass/settings/ui/developer/RectBuilder;

    invoke-direct {v3}, Lcom/google/glass/settings/ui/developer/RectBuilder;-><init>()V

    .line 124
    invoke-virtual {v3, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setLeft(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v3

    const/16 v4, 0x50

    invoke-virtual {v3, v4}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setBottom(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v3

    .line 125
    invoke-virtual {v3, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setRight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v3

    const/16 v4, 0x46

    invoke-virtual {v3, v4}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setHeight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v3

    aput-object v3, v2, v10

    .line 123
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->addSection(II[Lcom/google/glass/settings/ui/developer/RectBuilder;)Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->CAPTION:Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    .line 128
    new-instance v0, Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    const-string v1, "author"

    sget v2, Lcom/google/glass/settings/ui/R$string;->layout_overlay_author:I

    invoke-direct {v0, v1, v2}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;-><init>(Ljava/lang/String;I)V

    sget-object v1, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->COMMON_MARGINS:Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;

    .line 130
    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->addSection(Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;)Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    move-result-object v0

    sget-object v1, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->FULL_WIDTH_FOOTER:Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;

    .line 131
    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->addSection(Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;)Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$string;->layout_overlay_section_header:I

    new-array v2, v11, [Lcom/google/glass/settings/ui/developer/RectBuilder;

    new-instance v3, Lcom/google/glass/settings/ui/developer/RectBuilder;

    invoke-direct {v3}, Lcom/google/glass/settings/ui/developer/RectBuilder;-><init>()V

    .line 133
    invoke-virtual {v3, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setLeft(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setTop(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v3

    .line 134
    invoke-virtual {v3, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setRight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v3

    const/16 v4, 0x46

    invoke-virtual {v3, v4}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setHeight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v3

    aput-object v3, v2, v10

    .line 132
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->addSection(II[Lcom/google/glass/settings/ui/developer/RectBuilder;)Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$string;->layout_overlay_section_body:I

    const v2, -0xff0001

    new-array v3, v11, [Lcom/google/glass/settings/ui/developer/RectBuilder;

    new-instance v4, Lcom/google/glass/settings/ui/developer/RectBuilder;

    invoke-direct {v4}, Lcom/google/glass/settings/ui/developer/RectBuilder;-><init>()V

    .line 137
    invoke-virtual {v4, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setLeft(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    const/16 v5, 0x7d

    invoke-virtual {v4, v5}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setTop(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    .line 138
    invoke-virtual {v4, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setRight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    const/16 v5, 0x5f

    invoke-virtual {v4, v5}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setBottom(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    aput-object v4, v3, v10

    .line 135
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->addSection(II[Lcom/google/glass/settings/ui/developer/RectBuilder;)Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$string;->layout_overlay_section_padding:I

    const/16 v2, -0x100

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/glass/settings/ui/developer/RectBuilder;

    new-instance v4, Lcom/google/glass/settings/ui/developer/RectBuilder;

    invoke-direct {v4}, Lcom/google/glass/settings/ui/developer/RectBuilder;-><init>()V

    .line 140
    invoke-virtual {v4, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setLeft(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    const/16 v5, 0x6e

    invoke-virtual {v4, v5}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setTop(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    .line 141
    invoke-virtual {v4, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setRight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setHeight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    aput-object v4, v3, v10

    new-instance v4, Lcom/google/glass/settings/ui/developer/RectBuilder;

    invoke-direct {v4}, Lcom/google/glass/settings/ui/developer/RectBuilder;-><init>()V

    .line 142
    invoke-virtual {v4, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setLeft(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setBottom(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    .line 143
    invoke-virtual {v4, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setRight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setHeight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    aput-object v4, v3, v11

    .line 139
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->addSection(II[Lcom/google/glass/settings/ui/developer/RectBuilder;)Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->AUTHOR:Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    .line 146
    new-instance v0, Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    const-string v1, "menu"

    sget v2, Lcom/google/glass/settings/ui/R$string;->layout_overlay_menu:I

    invoke-direct {v0, v1, v2}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;-><init>(Ljava/lang/String;I)V

    sget-object v1, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->COMMON_MARGINS:Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;

    .line 147
    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->addSection(Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;)Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    move-result-object v0

    sget-object v1, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->FULL_WIDTH_FOOTER:Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;

    .line 148
    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->addSection(Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;)Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$string;->layout_overlay_section_title:I

    new-array v2, v11, [Lcom/google/glass/settings/ui/developer/RectBuilder;

    new-instance v3, Lcom/google/glass/settings/ui/developer/RectBuilder;

    invoke-direct {v3}, Lcom/google/glass/settings/ui/developer/RectBuilder;-><init>()V

    .line 150
    invoke-virtual {v3, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setLeft(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v3

    const/16 v4, 0x91

    invoke-virtual {v3, v4}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setTop(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v3

    .line 151
    invoke-virtual {v3, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setRight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v3

    const/16 v4, 0x46

    invoke-virtual {v3, v4}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setHeight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v3

    aput-object v3, v2, v10

    .line 149
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->addSection(II[Lcom/google/glass/settings/ui/developer/RectBuilder;)Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->MENU:Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    .line 154
    new-instance v0, Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    const-string v1, "alert"

    sget v2, Lcom/google/glass/settings/ui/R$string;->layout_overlay_alert:I

    invoke-direct {v0, v1, v2}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;-><init>(Ljava/lang/String;I)V

    sget-object v1, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->COMMON_MARGINS:Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;

    .line 156
    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->addSection(Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;)Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    move-result-object v0

    sget-object v1, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->FULL_WIDTH_FOOTER:Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;

    .line 157
    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->addSection(Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;)Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$string;->layout_overlay_section_icon:I

    new-array v2, v11, [Lcom/google/glass/settings/ui/developer/RectBuilder;

    new-instance v3, Lcom/google/glass/settings/ui/developer/RectBuilder;

    invoke-direct {v3}, Lcom/google/glass/settings/ui/developer/RectBuilder;-><init>()V

    .line 159
    invoke-virtual {v3, v13}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setLeft(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v3

    const/16 v4, 0x3c

    invoke-virtual {v3, v4}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setTop(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v3

    const/16 v4, 0xa0

    .line 160
    invoke-virtual {v3, v4}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setWidth(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v3

    const/16 v4, 0xa0

    invoke-virtual {v3, v4}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setHeight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v3

    aput-object v3, v2, v10

    .line 158
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->addSection(II[Lcom/google/glass/settings/ui/developer/RectBuilder;)Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$string;->layout_overlay_section_message:I

    const v2, -0xff0001

    new-array v3, v11, [Lcom/google/glass/settings/ui/developer/RectBuilder;

    new-instance v4, Lcom/google/glass/settings/ui/developer/RectBuilder;

    invoke-direct {v4}, Lcom/google/glass/settings/ui/developer/RectBuilder;-><init>()V

    .line 163
    invoke-virtual {v4, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setLeft(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setTop(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    .line 164
    invoke-virtual {v4, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setRight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setHeight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    aput-object v4, v3, v10

    .line 161
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->addSection(II[Lcom/google/glass/settings/ui/developer/RectBuilder;)Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$string;->layout_overlay_section_padding:I

    const/16 v2, -0x100

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/glass/settings/ui/developer/RectBuilder;

    new-instance v4, Lcom/google/glass/settings/ui/developer/RectBuilder;

    invoke-direct {v4}, Lcom/google/glass/settings/ui/developer/RectBuilder;-><init>()V

    .line 166
    invoke-virtual {v4, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setLeft(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setTop(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    .line 167
    invoke-virtual {v4, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setRight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setHeight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    aput-object v4, v3, v10

    new-instance v4, Lcom/google/glass/settings/ui/developer/RectBuilder;

    invoke-direct {v4}, Lcom/google/glass/settings/ui/developer/RectBuilder;-><init>()V

    .line 169
    invoke-virtual {v4, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setLeft(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    const/16 v5, 0xdc

    invoke-virtual {v4, v5}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setTop(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    .line 170
    invoke-virtual {v4, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setRight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setHeight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v4

    aput-object v4, v3, v11

    .line 165
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->addSection(II[Lcom/google/glass/settings/ui/developer/RectBuilder;)Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->ALERT:Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    .line 173
    new-instance v0, Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    const-string v1, "title"

    sget v2, Lcom/google/glass/settings/ui/R$string;->layout_overlay_title:I

    invoke-direct {v0, v1, v2}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;-><init>(Ljava/lang/String;I)V

    sget-object v1, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->COMMON_MARGINS:Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;

    .line 175
    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->addSection(Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;)Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$string;->layout_overlay_section_body:I

    new-array v2, v11, [Lcom/google/glass/settings/ui/developer/RectBuilder;

    new-instance v3, Lcom/google/glass/settings/ui/developer/RectBuilder;

    invoke-direct {v3}, Lcom/google/glass/settings/ui/developer/RectBuilder;-><init>()V

    .line 177
    invoke-virtual {v3, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setLeft(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setBottom(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v3

    .line 178
    invoke-virtual {v3, v9}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setRight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v3

    const/16 v4, 0x46

    invoke-virtual {v3, v4}, Lcom/google/glass/settings/ui/developer/RectBuilder;->setHeight(I)Lcom/google/glass/settings/ui/developer/RectBuilder;

    move-result-object v3

    aput-object v3, v2, v10

    .line 176
    invoke-virtual {v0, v1, v12, v2}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->addSection(II[Lcom/google/glass/settings/ui/developer/RectBuilder;)Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->TITLE:Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    .line 181
    sget-object v0, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->TEXT:Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    sget-object v1, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->COLUMNS:Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    sget-object v2, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->CAPTION:Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    sget-object v3, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->TITLE:Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    sget-object v4, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->AUTHOR:Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    sget-object v5, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->ALERT:Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    sget-object v6, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->MENU:Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    invoke-static/range {v0 .. v6}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->OVERLAY_LIST:Ljava/util/List;

    .line 190
    new-instance v8, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v8}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    .line 192
    .local v8, "mapBuilder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Lcom/google/glass/settings/ui/developer/LayoutOverlay;>;"
    sget-object v0, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->OVERLAY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    .line 193
    .local v7, "layoutOverlay":Lcom/google/glass/settings/ui/developer/LayoutOverlay;
    invoke-virtual {v7}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1, v7}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 195
    .end local v7    # "layoutOverlay":Lcom/google/glass/settings/ui/developer/LayoutOverlay;
    :cond_0
    invoke-virtual {v8}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/developer/LayoutOverlays;->OVERLAY_MAP:Ljava/util/Map;

    .line 196
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

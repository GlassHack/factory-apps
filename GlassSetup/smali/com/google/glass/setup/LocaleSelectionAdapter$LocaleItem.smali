.class public Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;
.super Ljava/lang/Object;
.source "LocaleSelectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/setup/LocaleSelectionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocaleItem"
.end annotation


# instance fields
.field private final backgroundResource:I

.field final instructionsList:Ljava/util/List;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final locale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Ljava/util/Locale;I)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "backgroundResource"    # I

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;->instructionsList:Ljava/util/List;

    .line 150
    iput-object p1, p0, Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;->locale:Ljava/util/Locale;

    .line 151
    iput p2, p0, Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;->backgroundResource:I

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;

    .prologue
    .line 142
    iget v0, p0, Lcom/google/glass/setup/LocaleSelectionAdapter$LocaleItem;->backgroundResource:I

    return v0
.end method

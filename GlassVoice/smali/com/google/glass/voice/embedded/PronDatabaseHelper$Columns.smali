.class Lcom/google/glass/voice/embedded/PronDatabaseHelper$Columns;
.super Ljava/lang/Object;
.source "PronDatabaseHelper.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/embedded/PronDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Columns"
.end annotation


# static fields
.field static final LOCALE:Ljava/lang/String; = "locale"

.field static final PHRASE:Ljava/lang/String; = "phrase"

.field static final PRONS:Ljava/lang/String; = "prons"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

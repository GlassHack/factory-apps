.class public Lcom/google/glass/voice/menu/TriggerCommandUi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INVALID_VALUE:I = -0x1

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field public static final uiByCommand:Lcom/google/common/collect/az;


# instance fields
.field private final confirmationMessageId:I

.field private final defaultInputType:I

.field private final disambiguationLabelId:I

.field private final iconResourceId:I

.field private final openEndedDecoratorId:I

.field private final progressMessageId:I

.field private final touchMenuLabelId:I

.field private final voiceMenuLabelId:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    .line 26
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/menu/TriggerCommandUi;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 45
    invoke-static {}, Lcom/google/common/collect/ImmutableBiMap;->builder()Lcom/google/common/collect/dg;

    move-result-object v9

    .line 46
    sget-object v6, Lcom/google/android/glass/app/VoiceTriggers$Command;->LISTEN_TO:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v0, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v1, Lcom/google/glass/common/R$drawable;->ic_beamed_note_50:I

    sget v2, Lcom/google/glass/common/R$string;->touch_label_listen_to:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_listen_to:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_listen_to:I

    sget v5, Lcom/google/glass/common/R$string;->open_ended_decorator_listen_to:I

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIIII)V

    invoke-virtual {v9, v6, v0}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 52
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->SHOW_A_COMPASS:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$drawable;->ic_compass_50:I

    sget v3, Lcom/google/glass/common/R$string;->touch_label_show_a_compass:I

    sget v4, Lcom/google/glass/common/R$string;->disambiguation_label_show_a_compass:I

    sget v5, Lcom/google/glass/common/R$string;->voice_label_show_a_compass:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIII)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 57
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->MAKE_A_REQUEST:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$drawable;->ic_request_50:I

    sget v3, Lcom/google/glass/common/R$string;->touch_label_make_a_request:I

    sget v4, Lcom/google/glass/common/R$string;->disambiguation_label_make_a_request:I

    sget v5, Lcom/google/glass/common/R$string;->voice_label_make_a_request:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIII)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 62
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->START_A_BIKE_RIDE:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$drawable;->ic_bike_50:I

    sget v3, Lcom/google/glass/common/R$string;->touch_label_start_a_bike_ride:I

    sget v4, Lcom/google/glass/common/R$string;->disambiguation_label_start_a_bike_ride:I

    sget v5, Lcom/google/glass/common/R$string;->voice_label_start_a_bike_ride:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIII)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 67
    sget-object v6, Lcom/google/android/glass/app/VoiceTriggers$Command;->FIND_A_RECIPE:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v0, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v1, Lcom/google/glass/common/R$drawable;->ic_find_a_recipe_50:I

    sget v2, Lcom/google/glass/common/R$string;->touch_label_find_a_recipe:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_find_a_recipe:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_find_a_recipe:I

    sget v5, Lcom/google/glass/common/R$string;->open_ended_decorator_find_a_recipe:I

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIIII)V

    invoke-virtual {v9, v6, v0}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 73
    sget-object v6, Lcom/google/android/glass/app/VoiceTriggers$Command;->RECORD_A_RECIPE:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v0, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v1, Lcom/google/glass/common/R$drawable;->ic_record_a_recipe_50:I

    sget v2, Lcom/google/glass/common/R$string;->touch_label_record_a_recipe:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_record_a_recipe:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_record_a_recipe:I

    sget v5, Lcom/google/glass/common/R$string;->open_ended_decorator_record_a_recipe:I

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIIII)V

    invoke-virtual {v9, v6, v0}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 79
    sget-object v6, Lcom/google/android/glass/app/VoiceTriggers$Command;->CHECK_ME_IN:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v0, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v1, Lcom/google/glass/common/R$drawable;->ic_check_in_50:I

    sget v2, Lcom/google/glass/common/R$string;->touch_label_check_me_in:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_check_me_in:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_check_me_in:I

    sget v5, Lcom/google/glass/common/R$string;->open_ended_decorator_check_me_in:I

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIIII)V

    invoke-virtual {v9, v6, v0}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 86
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->CHECK_THIS_OUT:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_check_this_out:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_check_this_out:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_check_this_out:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 91
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->START_A_STOPWATCH:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$drawable;->ic_stopwatch_50:I

    sget v3, Lcom/google/glass/common/R$string;->touch_label_start_a_stopwatch:I

    sget v4, Lcom/google/glass/common/R$string;->disambiguation_label_start_a_stopwatch:I

    sget v5, Lcom/google/glass/common/R$string;->voice_label_start_a_stopwatch:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIII)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 96
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->START_A_TIMER:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$drawable;->ic_timer_50:I

    sget v3, Lcom/google/glass/common/R$string;->touch_label_start_a_timer:I

    sget v4, Lcom/google/glass/common/R$string;->disambiguation_label_start_a_timer:I

    sget v5, Lcom/google/glass/common/R$string;->voice_label_start_a_timer:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIII)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 101
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->START_A_ROUND_OF_GOLF:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$drawable;->ic_golf_50:I

    sget v3, Lcom/google/glass/common/R$string;->touch_label_start_a_round_of_golf:I

    sget v4, Lcom/google/glass/common/R$string;->disambiguation_label_start_a_round_of_golf:I

    sget v5, Lcom/google/glass/common/R$string;->voice_label_start_a_round_of_golf:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIII)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 106
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->TRANSLATE_THIS:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$drawable;->ic_translate_50:I

    sget v3, Lcom/google/glass/common/R$string;->touch_label_translate_this:I

    sget v4, Lcom/google/glass/common/R$string;->disambiguation_label_translate_this:I

    sget v5, Lcom/google/glass/common/R$string;->voice_label_translate_this:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIII)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 111
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->LEARN_A_SONG:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$drawable;->ic_learn_a_song_50:I

    sget v3, Lcom/google/glass/common/R$string;->touch_label_learn_a_song:I

    sget v4, Lcom/google/glass/common/R$string;->disambiguation_label_learn_a_song:I

    sget v5, Lcom/google/glass/common/R$string;->voice_label_learn_a_song:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIII)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 116
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->TUNE_AN_INSTRUMENT:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$drawable;->ic_tuner_50:I

    sget v3, Lcom/google/glass/common/R$string;->touch_label_tune_an_instrument:I

    sget v4, Lcom/google/glass/common/R$string;->disambiguation_label_tune_an_instrument:I

    sget v5, Lcom/google/glass/common/R$string;->voice_label_tune_an_instrument:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIII)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 121
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->PLAY_A_GAME:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$drawable;->ic_game_50:I

    sget v3, Lcom/google/glass/common/R$string;->touch_label_play_a_game:I

    sget v4, Lcom/google/glass/common/R$string;->disambiguation_label_play_a_game:I

    sget v5, Lcom/google/glass/common/R$string;->voice_label_play_a_game:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIII)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 126
    sget-object v10, Lcom/google/android/glass/app/VoiceTriggers$Command;->ADD_AN_EVENT:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v0, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v1, Lcom/google/glass/common/R$drawable;->ic_calendar_50:I

    sget v2, Lcom/google/glass/common/R$string;->touch_label_add_an_event:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_add_an_event:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_add_an_event:I

    const/4 v5, -0x1

    sget v6, Lcom/google/glass/common/R$string;->progress_message_add_an_event:I

    sget v7, Lcom/google/glass/common/R$string;->confirmation_message_add_an_event:I

    const/4 v8, 0x2

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIIIIIII)V

    invoke-virtual {v9, v10, v0}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 135
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->START_A_WORKOUT:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$drawable;->ic_workout_50:I

    sget v3, Lcom/google/glass/common/R$string;->touch_label_start_a_workout:I

    sget v4, Lcom/google/glass/common/R$string;->disambiguation_label_start_a_workout:I

    sget v5, Lcom/google/glass/common/R$string;->voice_label_start_a_workout:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIII)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 140
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->TAKE_A_PICTURE:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$drawable;->ic_camera_50:I

    sget v3, Lcom/google/glass/common/R$string;->touch_label_take_a_picture:I

    sget v4, Lcom/google/glass/common/R$string;->disambiguation_label_take_a_picture:I

    sget v5, Lcom/google/glass/common/R$string;->voice_label_take_a_picture:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIII)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 145
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->RECORD_A_VIDEO:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$drawable;->ic_video_50:I

    sget v3, Lcom/google/glass/common/R$string;->touch_label_record_a_video:I

    sget v4, Lcom/google/glass/common/R$string;->disambiguation_label_record_a_video:I

    sget v5, Lcom/google/glass/common/R$string;->voice_label_record_a_video:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIII)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 150
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->FIND_A_PRODUCT:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$drawable;->ic_find_product_50:I

    sget v3, Lcom/google/glass/common/R$string;->touch_label_find_a_product:I

    sget v4, Lcom/google/glass/common/R$string;->disambiguation_label_find_a_product:I

    sget v5, Lcom/google/glass/common/R$string;->voice_label_find_a_product:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIII)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 155
    sget-object v10, Lcom/google/android/glass/app/VoiceTriggers$Command;->REMEMBER_WHERE_I_AM:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v0, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v1, Lcom/google/glass/common/R$drawable;->ic_location_plus_50:I

    sget v2, Lcom/google/glass/common/R$string;->touch_label_remember_where_i_am:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_remember_where_i_am:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_remember_where_i_am:I

    const/4 v5, -0x1

    sget v6, Lcom/google/glass/common/R$string;->progress_message_remember_where_i_am:I

    sget v7, Lcom/google/glass/common/R$string;->confirmation_message_remember_where_i_am:I

    const/4 v8, 0x3

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIIIIIII)V

    invoke-virtual {v9, v10, v0}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 164
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->SHOW_ME_THE_NEWS:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$drawable;->ic_news_50:I

    sget v3, Lcom/google/glass/common/R$string;->touch_label_show_me_the_news:I

    sget v4, Lcom/google/glass/common/R$string;->disambiguation_label_show_me_the_news:I

    sget v5, Lcom/google/glass/common/R$string;->voice_label_show_me_the_news:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIII)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 169
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->SHARE_MY_LOCATION:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$drawable;->ic_location_share_50:I

    sget v3, Lcom/google/glass/common/R$string;->touch_label_share_my_location:I

    sget v4, Lcom/google/glass/common/R$string;->disambiguation_label_share_my_location:I

    sget v5, Lcom/google/glass/common/R$string;->voice_label_share_my_location:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIII)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 174
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->SCAN_A_PRODUCT:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$drawable;->ic_scan_50:I

    sget v3, Lcom/google/glass/common/R$string;->touch_label_scan_a_product:I

    sget v4, Lcom/google/glass/common/R$string;->disambiguation_label_scan_a_product:I

    sget v5, Lcom/google/glass/common/R$string;->voice_label_scan_a_product:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIII)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 179
    sget-object v6, Lcom/google/android/glass/app/VoiceTriggers$Command;->SEND_MONEY:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v0, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v1, Lcom/google/glass/common/R$drawable;->ic_send_money_50:I

    sget v2, Lcom/google/glass/common/R$string;->touch_label_send_money:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_send_money:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_send_money:I

    sget v5, Lcom/google/glass/common/R$string;->open_ended_decorator_send_money:I

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIIII)V

    invoke-virtual {v9, v6, v0}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 185
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->FIND_A_DENTIST:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$drawable;->ic_tooth_50:I

    sget v3, Lcom/google/glass/common/R$string;->touch_label_find_a_dentist:I

    sget v4, Lcom/google/glass/common/R$string;->disambiguation_label_find_a_dentist:I

    sget v5, Lcom/google/glass/common/R$string;->voice_label_find_a_dentist:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIII)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 190
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->CALCULATE:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$drawable;->ic_calculator_50:I

    sget v3, Lcom/google/glass/common/R$string;->touch_label_calculate:I

    sget v4, Lcom/google/glass/common/R$string;->disambiguation_label_calculate:I

    sget v5, Lcom/google/glass/common/R$string;->voice_label_calculate:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIII)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 195
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->LEARN_AN_INSTRUMENT:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$drawable;->ic_tuner_50:I

    sget v3, Lcom/google/glass/common/R$string;->touch_label_learn_an_instrument:I

    sget v4, Lcom/google/glass/common/R$string;->disambiguation_label_learn_an_instrument:I

    sget v5, Lcom/google/glass/common/R$string;->voice_label_learn_an_instrument:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIII)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 200
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->SHOW_SONG_LYRICS:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$drawable;->ic_karaoke_mic_50:I

    sget v3, Lcom/google/glass/common/R$string;->touch_label_show_song_lyrics:I

    sget v4, Lcom/google/glass/common/R$string;->disambiguation_label_show_song_lyrics:I

    sget v5, Lcom/google/glass/common/R$string;->voice_label_show_song_lyrics:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIII)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 205
    sget-object v10, Lcom/google/android/glass/app/VoiceTriggers$Command;->LOG_A_MEAL:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v0, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v1, Lcom/google/glass/common/R$drawable;->ic_meal_50:I

    sget v2, Lcom/google/glass/common/R$string;->touch_label_log_a_meal:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_log_a_meal:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_log_a_meal:I

    const/4 v5, -0x1

    sget v6, Lcom/google/glass/common/R$string;->progress_message_log_a_meal:I

    sget v7, Lcom/google/glass/common/R$string;->confirmation_message_log_a_meal:I

    const/4 v8, 0x2

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIIIIIII)V

    invoke-virtual {v9, v10, v0}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 214
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->SHOW_ME_THE_WEATHER:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$drawable;->ic_forecast_50:I

    sget v3, Lcom/google/glass/common/R$string;->touch_label_show_me_the_weather:I

    sget v4, Lcom/google/glass/common/R$string;->disambiguation_label_show_me_the_weather:I

    sget v5, Lcom/google/glass/common/R$string;->voice_label_show_me_the_weather:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIII)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 219
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->EXPLORE_THE_STARS:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$drawable;->ic_constellation_50:I

    sget v3, Lcom/google/glass/common/R$string;->touch_label_explore_the_stars:I

    sget v4, Lcom/google/glass/common/R$string;->disambiguation_label_explore_the_stars:I

    sget v5, Lcom/google/glass/common/R$string;->voice_label_explore_the_stars:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIII)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 224
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->TEACH_ME_ABOUT:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$drawable;->ic_lightbulb_50:I

    sget v3, Lcom/google/glass/common/R$string;->touch_label_teach_me_about:I

    sget v4, Lcom/google/glass/common/R$string;->disambiguation_label_teach_me_about:I

    sget v5, Lcom/google/glass/common/R$string;->voice_label_teach_me_about:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIII)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 229
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->CONTROL_MY_CAR:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$drawable;->ic_car_50:I

    sget v3, Lcom/google/glass/common/R$string;->touch_label_control_my_car:I

    sget v4, Lcom/google/glass/common/R$string;->disambiguation_label_control_my_car:I

    sget v5, Lcom/google/glass/common/R$string;->voice_label_control_my_car:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIII)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 234
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->SHOW_ME_TRANSIT_TIMES:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$drawable;->ic_subway_50:I

    sget v3, Lcom/google/glass/common/R$string;->touch_label_show_me_transit_times:I

    sget v4, Lcom/google/glass/common/R$string;->disambiguation_label_show_me_transit_times:I

    sget v5, Lcom/google/glass/common/R$string;->voice_label_show_me_transit_times:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIII)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 239
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->FIND_A_DOCTOR:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$drawable;->ic_medical_50:I

    sget v3, Lcom/google/glass/common/R$string;->touch_label_find_a_doctor:I

    sget v4, Lcom/google/glass/common/R$string;->disambiguation_label_find_a_doctor:I

    sget v5, Lcom/google/glass/common/R$string;->voice_label_find_a_doctor:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIII)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 244
    sget-object v6, Lcom/google/android/glass/app/VoiceTriggers$Command;->FIND_A_VIDEO:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v0, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v1, Lcom/google/glass/common/R$drawable;->ic_clapboard_50:I

    sget v2, Lcom/google/glass/common/R$string;->touch_label_find_a_video:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_find_a_video:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_find_a_video:I

    sget v5, Lcom/google/glass/common/R$string;->open_ended_decorator_find_a_video:I

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIIII)V

    invoke-virtual {v9, v6, v0}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 250
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->SHOW_ME_MY_SPEED:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$drawable;->ic_speedometer_50:I

    sget v3, Lcom/google/glass/common/R$string;->touch_label_show_me_my_speed:I

    sget v4, Lcom/google/glass/common/R$string;->disambiguation_label_show_me_my_speed:I

    sget v5, Lcom/google/glass/common/R$string;->voice_label_show_me_my_speed:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIII)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 255
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->START_A_RUN:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$drawable;->ic_run_50:I

    sget v3, Lcom/google/glass/common/R$string;->touch_label_start_a_run:I

    sget v4, Lcom/google/glass/common/R$string;->disambiguation_label_start_a_run:I

    sget v5, Lcom/google/glass/common/R$string;->voice_label_start_a_run:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIII)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 260
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->FIND_A_PLACE:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$drawable;->ic_place_50:I

    sget v3, Lcom/google/glass/common/R$string;->touch_label_find_a_place:I

    sget v4, Lcom/google/glass/common/R$string;->disambiguation_label_find_a_place:I

    sget v5, Lcom/google/glass/common/R$string;->voice_label_find_a_place:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIII)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 265
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->TURN_THE_FLASHLIGHT_ON:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$drawable;->ic_flashlight_50:I

    sget v3, Lcom/google/glass/common/R$string;->touch_label_turn_the_flashlight_on:I

    sget v4, Lcom/google/glass/common/R$string;->disambiguation_label_turn_the_flashlight_on:I

    sget v5, Lcom/google/glass/common/R$string;->voice_label_turn_the_flashlight_on:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIII)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 270
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->SHOW_ME_ANALYTICS:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$drawable;->ic_chart_50:I

    sget v3, Lcom/google/glass/common/R$string;->touch_label_show_me_analytics:I

    sget v4, Lcom/google/glass/common/R$string;->disambiguation_label_show_me_analytics:I

    sget v5, Lcom/google/glass/common/R$string;->voice_label_show_me_analytics:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIII)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 275
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->CONTROL_MY_HOME:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$drawable;->ic_home_50:I

    sget v3, Lcom/google/glass/common/R$string;->touch_label_control_my_home:I

    sget v4, Lcom/google/glass/common/R$string;->disambiguation_label_control_my_home:I

    sget v5, Lcom/google/glass/common/R$string;->voice_label_control_my_home:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIII)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 280
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->GOOGLE:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$drawable;->ic_search_50:I

    sget v3, Lcom/google/glass/common/R$string;->touch_label_google:I

    sget v4, Lcom/google/glass/common/R$string;->disambiguation_label_google:I

    sget v5, Lcom/google/glass/common/R$string;->voice_label_google:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIII)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 285
    sget-object v6, Lcom/google/android/glass/app/VoiceTriggers$Command;->GET_DIRECTIONS:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v0, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v1, Lcom/google/glass/common/R$drawable;->ic_directions_50:I

    sget v2, Lcom/google/glass/common/R$string;->touch_label_get_directions:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_get_directions:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_get_directions:I

    sget v5, Lcom/google/glass/common/R$string;->open_ended_decorator_get_directions:I

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIIII)V

    invoke-virtual {v9, v6, v0}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 292
    sget-object v6, Lcom/google/android/glass/app/VoiceTriggers$Command;->FIND_THE_PRICE:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v0, Lcom/google/glass/voice/menu/TriggerCommandUi;

    const/4 v1, -0x1

    sget v2, Lcom/google/glass/common/R$string;->touch_label_find_the_price:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_find_the_price:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_find_the_price:I

    sget v5, Lcom/google/glass/common/R$string;->open_ended_decorator_find_the_price:I

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIIII)V

    invoke-virtual {v9, v6, v0}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 299
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->RECOGNIZE_THIS:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_recognize_this:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_recognize_this:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_recognize_this:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 305
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->PICK_A_CARD:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_pick_a_card:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_pick_a_card:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_pick_a_card:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 311
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->SHOW_ME_MY_ACCOUNT:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_show_me_my_account:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_show_me_my_account:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_show_me_my_account:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 317
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->SHOW_MY_PICTURES:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_show_my_pictures:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_show_my_pictures:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_show_my_pictures:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 323
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->ROLL_THE_DICE:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_roll_the_dice:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_roll_the_dice:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_roll_the_dice:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 329
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->HELP_ME_SIGN_IN:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_help_me_sign_in:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_help_me_sign_in:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_help_me_sign_in:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 335
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->KEEP_ME_AWAKE:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_keep_me_awake:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_keep_me_awake:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_keep_me_awake:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 341
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->GIVE_ME_FEEDBACK:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_give_me_feedback:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_give_me_feedback:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_give_me_feedback:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 347
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->FIND_A_HOSPITAL:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_find_a_hospital:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_find_a_hospital:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_find_a_hospital:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 353
    sget-object v10, Lcom/google/android/glass/app/VoiceTriggers$Command;->POST_A_QUESTION:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v0, Lcom/google/glass/voice/menu/TriggerCommandUi;

    const/4 v1, -0x1

    sget v2, Lcom/google/glass/common/R$string;->touch_label_post_a_question:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_post_a_question:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_post_a_question:I

    const/4 v5, -0x1

    sget v6, Lcom/google/glass/common/R$string;->progress_message_post_a_question:I

    sget v7, Lcom/google/glass/common/R$string;->confirmation_message_post_a_question:I

    const/4 v8, 0x2

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIIIIIII)V

    invoke-virtual {v9, v10, v0}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 364
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->SHOW_MY_VIDEOS:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_show_my_videos:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_show_my_videos:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_show_my_videos:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 370
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->LOCATE_A_SATELLITE:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    const/4 v2, -0x1

    sget v3, Lcom/google/glass/common/R$string;->touch_label_locate_a_satellite:I

    sget v4, Lcom/google/glass/common/R$string;->disambiguation_label_locate_a_satellite:I

    sget v5, Lcom/google/glass/common/R$string;->voice_label_locate_a_satellite:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIII)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 376
    sget-object v6, Lcom/google/android/glass/app/VoiceTriggers$Command;->MAKE_A_RESERVATION:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v0, Lcom/google/glass/voice/menu/TriggerCommandUi;

    const/4 v1, -0x1

    sget v2, Lcom/google/glass/common/R$string;->touch_label_make_a_reservation:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_make_a_reservation:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_make_a_reservation:I

    sget v5, Lcom/google/glass/common/R$string;->open_ended_decorator_make_a_reservation:I

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIIII)V

    invoke-virtual {v9, v6, v0}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 383
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->FLIP_A_COIN:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_flip_a_coin:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_flip_a_coin:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_flip_a_coin:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 389
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->MAGNIFY_THIS:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_magnify_this:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_magnify_this:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_magnify_this:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 395
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->SHOW_ME_A_DEMO:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_show_me_a_demo:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_show_me_a_demo:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_show_me_a_demo:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 401
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->CALL_ME_A_CAR:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_call_me_a_car:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_call_me_a_car:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_call_me_a_car:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 407
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->CAPTURE_A_PANORAMA:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_capture_a_panorama:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_capture_a_panorama:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_capture_a_panorama:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 413
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->CREATE_A_3D_MODEL:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_create_a_3d_model:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_create_a_3d_model:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_create_a_3d_model:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 419
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->RECOGNIZE_THIS_SONG:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_recognize_this_song:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_recognize_this_song:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_recognize_this_song:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 425
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->START_BROADCASTING:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_start_broadcasting:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_start_broadcasting:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_start_broadcasting:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 430
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->EXPLORE_NEARBY:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$drawable;->ic_explore_nearby_50:I

    sget v3, Lcom/google/glass/common/R$string;->touch_label_explore_nearby:I

    sget v4, Lcom/google/glass/common/R$string;->disambiguation_label_explore_nearby:I

    sget v5, Lcom/google/glass/common/R$string;->voice_label_explore_nearby:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIII)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 436
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->FIND_A_BIKE:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_find_a_bike:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_find_a_bike:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_find_a_bike:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 442
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->FIND_A_PASSAGE:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_find_a_passage:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_find_a_passage:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_find_a_passage:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 448
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->FIND_A_WEBSITE:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_find_a_website:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_find_a_website:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_find_a_website:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 454
    sget-object v6, Lcom/google/android/glass/app/VoiceTriggers$Command;->FIND_REVIEWS:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v0, Lcom/google/glass/voice/menu/TriggerCommandUi;

    const/4 v1, -0x1

    sget v2, Lcom/google/glass/common/R$string;->touch_label_find_reviews:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_find_reviews:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_find_reviews:I

    sget v5, Lcom/google/glass/common/R$string;->open_ended_decorator_find_reviews:I

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIIII)V

    invoke-virtual {v9, v6, v0}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 461
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->FIND_THE_EXCHANGE_RATE:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_find_the_exchange_rate:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_find_the_exchange_rate:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_find_the_exchange_rate:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 467
    sget-object v6, Lcom/google/android/glass/app/VoiceTriggers$Command;->LOOK_UP_THE_DEFINITION:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v0, Lcom/google/glass/voice/menu/TriggerCommandUi;

    const/4 v1, -0x1

    sget v2, Lcom/google/glass/common/R$string;->touch_label_look_up_the_definition:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_look_up_the_definition:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_look_up_the_definition:I

    sget v5, Lcom/google/glass/common/R$string;->open_ended_decorator_look_up_the_definition:I

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIIII)V

    invoke-virtual {v9, v6, v0}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 473
    sget-object v6, Lcom/google/android/glass/app/VoiceTriggers$Command;->MAKE_A_CALL:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v0, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v1, Lcom/google/glass/common/R$drawable;->ic_phone_out_50:I

    sget v2, Lcom/google/glass/common/R$string;->touch_label_make_a_call:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_make_a_call:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_make_a_call:I

    sget v5, Lcom/google/glass/common/R$string;->open_ended_decorator_make_a_call:I

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIIII)V

    invoke-virtual {v9, v6, v0}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 479
    sget-object v6, Lcom/google/android/glass/app/VoiceTriggers$Command;->MAKE_A_VIDEO_CALL:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v0, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v1, Lcom/google/glass/common/R$drawable;->ic_video_call_50:I

    sget v2, Lcom/google/glass/common/R$string;->touch_label_make_a_video_call:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_make_a_video_call:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_make_a_video_call:I

    sget v5, Lcom/google/glass/common/R$string;->open_ended_decorator_make_a_video_call:I

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIIII)V

    invoke-virtual {v9, v6, v0}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 485
    sget-object v10, Lcom/google/android/glass/app/VoiceTriggers$Command;->POST_AN_UPDATE:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v0, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v1, Lcom/google/glass/common/R$drawable;->ic_share_50:I

    sget v2, Lcom/google/glass/common/R$string;->touch_label_post_an_update:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_post_an_update:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_post_an_update:I

    const/4 v5, -0x1

    sget v6, Lcom/google/glass/common/R$string;->progress_message_post_an_update:I

    sget v7, Lcom/google/glass/common/R$string;->confirmation_message_post_an_update:I

    const/4 v8, 0x2

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIIIIIII)V

    invoke-virtual {v9, v10, v0}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 494
    sget-object v6, Lcom/google/android/glass/app/VoiceTriggers$Command;->SEND_A_MESSAGE:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v0, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v1, Lcom/google/glass/common/R$drawable;->ic_message_50:I

    sget v2, Lcom/google/glass/common/R$string;->touch_label_send_a_message:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_send_a_message:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_send_a_message:I

    sget v5, Lcom/google/glass/common/R$string;->open_ended_decorator_send_a_message:I

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIIII)V

    invoke-virtual {v9, v6, v0}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 500
    sget-object v10, Lcom/google/android/glass/app/VoiceTriggers$Command;->TAKE_A_NOTE:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v0, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v1, Lcom/google/glass/common/R$drawable;->ic_document_50:I

    sget v2, Lcom/google/glass/common/R$string;->touch_label_take_a_note:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_take_a_note:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_take_a_note:I

    const/4 v5, -0x1

    sget v6, Lcom/google/glass/common/R$string;->progress_message_take_a_note:I

    sget v7, Lcom/google/glass/common/R$string;->confirmation_message_take_a_note:I

    const/4 v8, 0x2

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIIIIIII)V

    invoke-virtual {v9, v10, v0}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 510
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->WATCH_MY_SWING:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_watch_my_swing:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_watch_my_swing:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_watch_my_swing:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 516
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->SHOW_THE_VIEWFINDER:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_show_the_viewfinder:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_show_the_viewfinder:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_show_the_viewfinder:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 523
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->FIND_A_FLIGHT:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_find_a_flight:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_find_a_flight:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_find_a_flight:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 529
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->HELP_ME_RELAX:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_help_me_relax:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_help_me_relax:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_help_me_relax:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 535
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->REMEMBER_THIS:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_remember_this:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_remember_this:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_remember_this:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 541
    sget-object v10, Lcom/google/android/glass/app/VoiceTriggers$Command;->REMIND_ME:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v0, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v1, Lcom/google/glass/common/R$drawable;->ic_reminder_50:I

    sget v2, Lcom/google/glass/common/R$string;->touch_label_remind_me:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_remind_me:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_remind_me:I

    const/4 v5, -0x1

    sget v6, Lcom/google/glass/common/R$string;->progress_message_remind_me:I

    sget v7, Lcom/google/glass/common/R$string;->confirmation_message_remind_me:I

    const/4 v8, 0x2

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIIIIIII)V

    invoke-virtual {v9, v10, v0}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 551
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->START_A_FLIGHT:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_start_a_flight:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_start_a_flight:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_start_a_flight:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 557
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->START_COACHING:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_start_coaching:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_start_coaching:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_start_coaching:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 563
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->START_IMAGING:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_start_imaging:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_start_imaging:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_start_imaging:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 569
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->START_PRESENTING:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_start_presenting:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_start_presenting:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_start_presenting:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 574
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->FIND_A_PLACE_TO_STAY:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$drawable;->ic_place_to_stay_50:I

    sget v3, Lcom/google/glass/common/R$string;->touch_label_find_a_place_to_stay:I

    sget v4, Lcom/google/glass/common/R$string;->disambiguation_label_find_a_place_to_stay:I

    sget v5, Lcom/google/glass/common/R$string;->voice_label_find_a_place_to_stay:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIII)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 580
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->CHECK_THE_BATTERY:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_check_the_battery:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_check_the_battery:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_check_the_battery:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 586
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->CONTACT_SUPPORT:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_contact_support:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_contact_support:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_contact_support:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 592
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->FIND_PARKING:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_find_parking:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_find_parking:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_find_parking:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 598
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->FIND_SOMEONE:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_find_someone:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_find_someone:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_find_someone:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 604
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->FIND_SOMETHING:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_find_something:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_find_something:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_find_something:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 610
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->GIVE_ME_A_CHALLENGE:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_give_me_a_challenge:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_give_me_a_challenge:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_give_me_a_challenge:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 616
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->HELP_ME_PRAY:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_help_me_pray:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_help_me_pray:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_help_me_pray:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 622
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->LEARN_A_LANGUAGE:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_learn_a_language:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_learn_a_language:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_learn_a_language:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 628
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->MINIFY_THIS:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_minify_this:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_minify_this:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_minify_this:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 634
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->RECORD_A_TIMELAPSE:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_record_a_timelapse:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_record_a_timelapse:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_record_a_timelapse:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 640
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->RUN_AN_EXPERIMENT:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_run_an_experiment:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_run_an_experiment:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_run_an_experiment:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 646
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->SHOW_ME_A_PLACE:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_show_me_a_place:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_show_me_a_place:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_show_me_a_place:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 652
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->SHOW_MEASUREMENTS:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_show_measurements:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_show_measurements:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_show_measurements:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 658
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->START_A_RACE:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_start_a_race:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_start_a_race:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_start_a_race:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 664
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->START_A_TOUR:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_start_a_tour:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_start_a_tour:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_start_a_tour:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 670
    sget-object v6, Lcom/google/android/glass/app/VoiceTriggers$Command;->TELL_A_STORY:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v0, Lcom/google/glass/voice/menu/TriggerCommandUi;

    const/4 v1, -0x1

    sget v2, Lcom/google/glass/common/R$string;->touch_label_tell_a_story:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_tell_a_story:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_tell_a_story:I

    sget v5, Lcom/google/glass/common/R$string;->open_ended_decorator_tell_a_story:I

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIIII)V

    invoke-virtual {v9, v6, v0}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 678
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->USE_A_FILTER:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_use_a_filter:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_use_a_filter:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_use_a_filter:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 684
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->ADD_A_REVIEW:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_add_a_review:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_add_a_review:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_add_a_review:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 690
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->FIND_A_HOME:Lcom/google/android/glass/app/VoiceTriggers$Command;

    new-instance v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    sget v2, Lcom/google/glass/common/R$string;->touch_label_find_a_home:I

    sget v3, Lcom/google/glass/common/R$string;->disambiguation_label_find_a_home:I

    sget v4, Lcom/google/glass/common/R$string;->voice_label_find_a_home:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(III)V

    invoke-virtual {v9, v0, v1}, Lcom/google/common/collect/dg;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dg;

    .line 695
    invoke-virtual {v9}, Lcom/google/common/collect/dg;->a()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/menu/TriggerCommandUi;->uiByCommand:Lcom/google/common/collect/az;

    .line 696
    return-void
.end method

.method private constructor <init>(III)V
    .locals 1

    .prologue
    .line 700
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIII)V

    .line 701
    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 6

    .prologue
    .line 706
    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIIII)V

    .line 707
    return-void
.end method

.method private constructor <init>(IIIII)V
    .locals 9

    .prologue
    const/4 v6, -0x1

    .line 712
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    move v8, v6

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/voice/menu/TriggerCommandUi;-><init>(IIIIIIII)V

    .line 714
    return-void
.end method

.method private constructor <init>(IIIIIIII)V
    .locals 0

    .prologue
    .line 719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 720
    iput p1, p0, Lcom/google/glass/voice/menu/TriggerCommandUi;->iconResourceId:I

    .line 721
    iput p2, p0, Lcom/google/glass/voice/menu/TriggerCommandUi;->touchMenuLabelId:I

    .line 722
    iput p3, p0, Lcom/google/glass/voice/menu/TriggerCommandUi;->disambiguationLabelId:I

    .line 723
    iput p4, p0, Lcom/google/glass/voice/menu/TriggerCommandUi;->voiceMenuLabelId:I

    .line 724
    iput p5, p0, Lcom/google/glass/voice/menu/TriggerCommandUi;->openEndedDecoratorId:I

    .line 725
    iput p6, p0, Lcom/google/glass/voice/menu/TriggerCommandUi;->progressMessageId:I

    .line 726
    iput p7, p0, Lcom/google/glass/voice/menu/TriggerCommandUi;->confirmationMessageId:I

    .line 727
    iput p8, p0, Lcom/google/glass/voice/menu/TriggerCommandUi;->defaultInputType:I

    .line 728
    return-void
.end method

.method public static bind(Lcom/google/glass/widget/MessageDialog$Builder;I)V
    .locals 5

    .prologue
    .line 885
    invoke-static {p1}, Lcom/google/glass/voice/menu/TriggerCommandUi;->getUiByCommandType(I)Lcom/google/glass/voice/menu/TriggerCommandUi;

    move-result-object v0

    .line 886
    if-eqz v0, :cond_0

    .line 888
    invoke-virtual {v0}, Lcom/google/glass/voice/menu/TriggerCommandUi;->getIconResourceId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    .line 889
    invoke-virtual {v0}, Lcom/google/glass/voice/menu/TriggerCommandUi;->getProgressMessageId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    .line 890
    invoke-virtual {v0}, Lcom/google/glass/voice/menu/TriggerCommandUi;->getConfirmationMessageId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 891
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$drawable;->ic_done_50:I

    .line 892
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    .line 896
    :goto_0
    return-void

    .line 894
    :cond_0
    sget-object v0, Lcom/google/glass/voice/menu/TriggerCommandUi;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "No CommandUi found for commandType: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static bindDisambiguationItem(Landroid/content/Context;Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 838
    invoke-static {p2}, Lcom/google/glass/voice/menu/TriggerCommandUi;->toCommandCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/google/glass/voice/menu/TriggerCommandUi;->toCommandCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, p3}, Lcom/google/glass/voice/menu/TriggerCommandUi;->setVoiceMenuLabels(Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 839
    return-void
.end method

.method public static bindDisamiguationKeyItem(Landroid/content/Context;Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/lang/String;Lcom/google/glass/voice/menu/TriggerCommandUi;Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 843
    if-eqz p3, :cond_1

    .line 845
    invoke-virtual {p3}, Lcom/google/glass/voice/menu/TriggerCommandUi;->hasIconResource()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/glass/voice/menu/TriggerCommandUi;->getIconResourceId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 846
    :goto_0
    invoke-static {p0, p3, v1, p4}, Lcom/google/glass/voice/menu/TriggerCommandUi;->getVoiceMenuLabel(Landroid/content/Context;Lcom/google/glass/voice/menu/TriggerCommandUi;Lcom/google/android/glass/app/VoiceTrigger;Z)Ljava/lang/String;

    move-result-object v1

    .line 847
    invoke-virtual {p3}, Lcom/google/glass/voice/menu/TriggerCommandUi;->getTouchMenuLabelId()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 846
    invoke-static {p1, v1, v2, v0}, Lcom/google/glass/voice/menu/TriggerCommandUi;->setVoiceMenuLabels(Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 851
    :goto_1
    return-void

    :cond_0
    move-object v0, v1

    .line 845
    goto :goto_0

    .line 849
    :cond_1
    invoke-static {p0, p1, p2, v1}, Lcom/google/glass/voice/menu/TriggerCommandUi;->bindDisambiguationItem(Landroid/content/Context;Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public static bindMirrorCommandMenuItem(Landroid/content/Context;Lcom/google/glass/voice/menu/VoiceMenuItem;I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 871
    invoke-static {p2}, Lcom/google/glass/voice/menu/TriggerCommandUi;->getUiByCommandType(I)Lcom/google/glass/voice/menu/TriggerCommandUi;

    move-result-object v2

    .line 872
    if-eqz v2, :cond_0

    .line 874
    invoke-virtual {v2}, Lcom/google/glass/voice/menu/TriggerCommandUi;->hasIconResource()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 875
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/glass/voice/menu/TriggerCommandUi;->getIconResourceId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 877
    :goto_0
    invoke-static {p0, v2, v1, v4}, Lcom/google/glass/voice/menu/TriggerCommandUi;->getVoiceMenuLabel(Landroid/content/Context;Lcom/google/glass/voice/menu/TriggerCommandUi;Lcom/google/android/glass/app/VoiceTrigger;Z)Ljava/lang/String;

    move-result-object v1

    .line 878
    invoke-virtual {v2}, Lcom/google/glass/voice/menu/TriggerCommandUi;->getTouchMenuLabelId()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 877
    invoke-static {p1, v1, v2, v0}, Lcom/google/glass/voice/menu/TriggerCommandUi;->setVoiceMenuLabels(Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 882
    :goto_1
    return-void

    .line 880
    :cond_0
    sget-object v0, Lcom/google/glass/voice/menu/TriggerCommandUi;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "No CommandUi found for commandType: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static bindNativeCommandAppItem(Landroid/content/Context;Lcom/google/glass/voice/menu/VoiceMenuItem;Lcom/google/android/glass/app/VoiceTrigger;)V
    .locals 3

    .prologue
    .line 855
    invoke-virtual {p2}, Lcom/google/android/glass/app/VoiceTrigger;->getCommand()Lcom/google/android/glass/app/VoiceTriggers$Command;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/voice/menu/TriggerCommandUi;->getUiByCommand(Lcom/google/android/glass/app/VoiceTriggers$Command;)Lcom/google/glass/voice/menu/TriggerCommandUi;

    move-result-object v1

    .line 856
    invoke-virtual {p2, p0}, Lcom/google/android/glass/app/VoiceTrigger;->loadIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 857
    if-eqz v1, :cond_1

    .line 858
    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/google/glass/voice/menu/TriggerCommandUi;->hasIconResource()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 859
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/glass/voice/menu/TriggerCommandUi;->getIconResourceId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 861
    :cond_0
    const/4 v2, 0x0

    invoke-static {p0, v1, p2, v2}, Lcom/google/glass/voice/menu/TriggerCommandUi;->getVoiceMenuLabel(Landroid/content/Context;Lcom/google/glass/voice/menu/TriggerCommandUi;Lcom/google/android/glass/app/VoiceTrigger;Z)Ljava/lang/String;

    move-result-object v2

    .line 862
    invoke-virtual {v1}, Lcom/google/glass/voice/menu/TriggerCommandUi;->getTouchMenuLabelId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 861
    invoke-static {p1, v2, v1, v0}, Lcom/google/glass/voice/menu/TriggerCommandUi;->setVoiceMenuLabels(Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 867
    :goto_0
    return-void

    .line 864
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/glass/app/VoiceTrigger;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/voice/menu/TriggerCommandUi;->toCommandCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 865
    invoke-virtual {p2}, Lcom/google/android/glass/app/VoiceTrigger;->getKeyword()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/voice/menu/TriggerCommandUi;->toCommandCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 864
    invoke-static {p1, v1, v2, v0}, Lcom/google/glass/voice/menu/TriggerCommandUi;->setVoiceMenuLabels(Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static createUiByLocalizedLabelMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 6

    .prologue
    .line 775
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 776
    invoke-static {}, Lcom/google/android/glass/app/VoiceTriggers$Command;->values()[Lcom/google/android/glass/app/VoiceTriggers$Command;

    move-result-object v2

    .line 777
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 778
    sget-object v3, Lcom/google/glass/voice/menu/TriggerCommandUi;->uiByCommand:Lcom/google/common/collect/az;

    aget-object v4, v2, v0

    invoke-interface {v3, v4}, Lcom/google/common/collect/az;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 779
    aget-object v3, v2, v0

    invoke-static {p0, v3}, Lcom/google/glass/voice/VoiceTriggerUtils;->getLabel(Landroid/content/Context;Lcom/google/android/glass/app/VoiceTriggers$Command;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/glass/voice/menu/TriggerCommandUi;->uiByCommand:Lcom/google/common/collect/az;

    aget-object v5, v2, v0

    .line 780
    invoke-interface {v4, v5}, Lcom/google/common/collect/az;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 779
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 783
    :cond_1
    return-object v1
.end method

.method public static getUiByCommand(Lcom/google/android/glass/app/VoiceTriggers$Command;)Lcom/google/glass/voice/menu/TriggerCommandUi;
    .locals 1

    .prologue
    .line 795
    sget-object v0, Lcom/google/glass/voice/menu/TriggerCommandUi;->uiByCommand:Lcom/google/common/collect/az;

    invoke-interface {v0, p0}, Lcom/google/common/collect/az;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/TriggerCommandUi;

    return-object v0
.end method

.method public static getUiByCommandType(I)Lcom/google/glass/voice/menu/TriggerCommandUi;
    .locals 2

    .prologue
    .line 787
    invoke-static {p0}, Lcom/google/glass/voice/VoiceTriggerUtils;->getVoiceTrigger(I)Lcom/google/android/glass/app/VoiceTriggers$Command;

    move-result-object v0

    .line 788
    if-nez v0, :cond_0

    .line 789
    const/4 v0, 0x0

    .line 791
    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/google/glass/voice/menu/TriggerCommandUi;->uiByCommand:Lcom/google/common/collect/az;

    invoke-interface {v1, v0}, Lcom/google/common/collect/az;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/TriggerCommandUi;

    goto :goto_0
.end method

.method public static getVoiceMenuLabel(Landroid/content/Context;Lcom/google/glass/voice/menu/TriggerCommandUi;Lcom/google/android/glass/app/VoiceTrigger;Z)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 813
    .line 814
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/glass/app/VoiceTrigger;->hasInput()Z

    move-result v0

    if-nez v0, :cond_1

    .line 815
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/voice/menu/TriggerCommandUi;->getDefaultInputType()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    :cond_1
    move v0, v2

    .line 819
    :goto_0
    if-eqz p3, :cond_2

    .line 820
    invoke-virtual {p1}, Lcom/google/glass/voice/menu/TriggerCommandUi;->getDisambiguationLabelId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 825
    :goto_1
    return-object v0

    .line 821
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/glass/voice/menu/TriggerCommandUi;->hasOpenEndedDecorator()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 822
    invoke-virtual {p1}, Lcom/google/glass/voice/menu/TriggerCommandUi;->getOpenEndedDecoratorId()I

    move-result v0

    new-array v2, v2, [Ljava/lang/Object;

    .line 823
    invoke-virtual {p1}, Lcom/google/glass/voice/menu/TriggerCommandUi;->getVoiceMenuLabelId()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 822
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 825
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/voice/menu/TriggerCommandUi;->getVoiceMenuLabelId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static hasUiForCommand(Lcom/google/android/glass/app/VoiceTriggers$Command;)Z
    .locals 1

    .prologue
    .line 771
    sget-object v0, Lcom/google/glass/voice/menu/TriggerCommandUi;->uiByCommand:Lcom/google/common/collect/az;

    invoke-interface {v0, p0}, Lcom/google/common/collect/az;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static setVoiceMenuLabels(Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 831
    invoke-virtual {p0, p2}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setTouchMenuLabel(Ljava/lang/String;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 832
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setVoiceMenuLabel(Ljava/lang/String;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 833
    invoke-virtual {p0, p3}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setTouchIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 834
    return-void
.end method

.method static toCommandCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 800
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 801
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    .line 802
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 804
    :cond_0
    return-object p0

    .line 802
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public getConfirmationMessageId()I
    .locals 1

    .prologue
    .line 755
    iget v0, p0, Lcom/google/glass/voice/menu/TriggerCommandUi;->confirmationMessageId:I

    return v0
.end method

.method public getDefaultInputType()I
    .locals 2

    .prologue
    .line 759
    iget v0, p0, Lcom/google/glass/voice/menu/TriggerCommandUi;->defaultInputType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/glass/voice/menu/TriggerCommandUi;->defaultInputType:I

    goto :goto_0
.end method

.method public getDisambiguationLabelId()I
    .locals 1

    .prologue
    .line 743
    iget v0, p0, Lcom/google/glass/voice/menu/TriggerCommandUi;->disambiguationLabelId:I

    return v0
.end method

.method public getIconResourceId()I
    .locals 1

    .prologue
    .line 731
    iget v0, p0, Lcom/google/glass/voice/menu/TriggerCommandUi;->iconResourceId:I

    return v0
.end method

.method public getOpenEndedDecoratorId()I
    .locals 1

    .prologue
    .line 763
    iget v0, p0, Lcom/google/glass/voice/menu/TriggerCommandUi;->openEndedDecoratorId:I

    return v0
.end method

.method public getProgressMessageId()I
    .locals 1

    .prologue
    .line 751
    iget v0, p0, Lcom/google/glass/voice/menu/TriggerCommandUi;->progressMessageId:I

    return v0
.end method

.method public getTouchMenuLabelId()I
    .locals 1

    .prologue
    .line 739
    iget v0, p0, Lcom/google/glass/voice/menu/TriggerCommandUi;->touchMenuLabelId:I

    return v0
.end method

.method public getVoiceMenuLabelId()I
    .locals 1

    .prologue
    .line 747
    iget v0, p0, Lcom/google/glass/voice/menu/TriggerCommandUi;->voiceMenuLabelId:I

    return v0
.end method

.method public hasIconResource()Z
    .locals 2

    .prologue
    .line 735
    iget v0, p0, Lcom/google/glass/voice/menu/TriggerCommandUi;->iconResourceId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOpenEndedDecorator()Z
    .locals 2

    .prologue
    .line 767
    iget v0, p0, Lcom/google/glass/voice/menu/TriggerCommandUi;->openEndedDecoratorId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
